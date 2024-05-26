CREATE OR REPLACE FUNCTION check_attempt_constraints()
RETURNS TRIGGER AS $$
BEGIN
    -- Check if the episode has more than 10 attempts
    IF (SELECT COUNT(*) FROM Attempt WHERE episode_id = NEW.episode_id) >= 10 THEN
        RAISE EXCEPTION 'An episode cannot have more than 10 attempts';
    END IF;

    -- Check for duplicate recipe_id and cook_id per episode
    IF EXISTS (
        SELECT 1
        FROM Attempt a
        WHERE a.episode_id = NEW.episode_id
          AND (a.recipe_id = NEW.recipe_id OR a.cook_id = NEW.cook_id)
    ) THEN
        RAISE EXCEPTION 'Duplicate recipe_id or cook_id for this episode';
    END IF;

    -- Check if the cook has expertise in the cuisine of the recipe
    IF NOT EXISTS (
        SELECT 1
        FROM Cook c
        JOIN Cook_Cuisine cc ON c.id = cc.cook_id
        JOIN Recipe r ON cc.cuisine_id = r.cuisine_id
        WHERE c.id = NEW.cook_id AND r.id = NEW.recipe_id
    ) THEN
        RAISE EXCEPTION 'Cook does not have expertise in recipe cuisine';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_check_attempt_constraints
BEFORE INSERT ON Attempt
FOR EACH ROW
EXECUTE FUNCTION check_attempt_constraints();


-- Prevents more than 10 episodes per year
CREATE OR REPLACE FUNCTION check_episode_count()
RETURNS TRIGGER AS $$
BEGIN
    IF (SELECT COUNT(*) FROM Episode WHERE EXTRACT(YEAR FROM release_date) = EXTRACT(YEAR FROM NEW.release_date)) >= 10 THEN
        RAISE EXCEPTION 'Cannot have more than 10 episodes in a year';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_check_episode_count
BEFORE INSERT ON Episode
FOR EACH ROW
EXECUTE FUNCTION check_episode_count();

-- Prevents more than 3 judges per attempt.
CREATE OR REPLACE FUNCTION check_cook_per_attempt()
RETURNS TRIGGER AS $$
BEGIN
    IF (SELECT COUNT(*) FROM Evaluation WHERE attempt_id = NEW.attempt_id) >= 3 THEN
        RAISE EXCEPTION 'Each attempt_id can have at most 3 cook_id entries.';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER trigger_check_cook_per_attempt
BEFORE INSERT OR UPDATE ON Evaluation
FOR EACH ROW
EXECUTE FUNCTION check_cook_per_attempt();


CREATE OR REPLACE FUNCTION check_judge_consecutive_episodes() RETURNS TRIGGER AS $$
DECLARE
    consecutive_count INT;
BEGIN
    -- Check the number of participations of the judge in the last three episodes by release_date
    SELECT COUNT(DISTINCT e.id)
    INTO consecutive_count
    FROM Evaluation ev
    JOIN Attempt a ON ev.attempt_id = a.id
    JOIN Episode e ON a.episode_id = e.id
    WHERE ev.cook_id = NEW.cook_id
    AND e.release_date IN (
        SELECT release_date
        FROM Episode
        ORDER BY release_date DESC
        LIMIT 3
    );

    IF consecutive_count >= 3 THEN
        RAISE EXCEPTION 'Judge cannot participate in more than 3 consecutive episodes';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create the trigger for judge participation
CREATE TRIGGER check_judge_consecutive_episodes_trigger
BEFORE INSERT ON Evaluation
FOR EACH ROW
EXECUTE FUNCTION check_judge_consecutive_episodes();

-- Create the function to check the number of tips
CREATE OR REPLACE FUNCTION check_recipe_tips()
RETURNS TRIGGER AS $$
BEGIN   
    IF (COUNT(*) FROM RecipeTip WHERE recipe_id = NEW.recipe_id) >= 3 THEN
        RAISE EXCEPTION 'A recipe can have up to 3 tips only';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create the trigger to call the function
CREATE TRIGGER trigger_check_recipe_tips
BEFORE INSERT OR UPDATE ON RecipeTip
FOR EACH ROW
EXECUTE FUNCTION check_recipe_tips();