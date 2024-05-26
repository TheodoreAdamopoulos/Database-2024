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