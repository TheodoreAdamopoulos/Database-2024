-- Create the function to check unique cuisine per episode and cook
CREATE OR REPLACE FUNCTION check_unique_cuisine_per_episode_and_cook()
RETURNS TRIGGER AS $$
DECLARE
    recipe_cuisine_count INT;
    cook_cuisine_id INT;
    cook_cuisine_count INT;
BEGIN
    -- Check if the new recipe's cuisine already exists in the episode
    SELECT COUNT(*) INTO recipe_cuisine_count
    FROM Attempt a
    JOIN Recipe r ON a.recipe_id = r.id
    WHERE a.episode_id = NEW.episode_id
    AND r.cuisine_id = (SELECT cuisine_id FROM Recipe WHERE id = NEW.recipe_id);

    IF recipe_cuisine_count > 0 THEN
        RAISE EXCEPTION 'Each episode must have recipes from different cuisines. Episode ID: %, Recipe ID: %, Recipe Cuisine ID: %', NEW.episode_id, NEW.recipe_id, (SELECT cuisine_id FROM Recipe WHERE id = NEW.recipe_id);
    END IF;

    -- Get the cuisine_id of the new recipe's cook
    SELECT r.cuisine_id INTO cook_cuisine_id
    FROM Recipe r
    JOIN Attempt a ON r.id = a.recipe_id
    WHERE a.cook_id = NEW.cook_id
    LIMIT 1;  -- Added LIMIT 1 to avoid multiple rows issue

    -- Debug message
    RAISE NOTICE 'Cook ID: %, Cook Cuisine ID: %', NEW.cook_id, cook_cuisine_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create the trigger to call the function
CREATE TRIGGER trigger_check_unique_cuisine_per_episode_and_cook
BEFORE INSERT ON Attempt
FOR EACH ROW
EXECUTE FUNCTION check_unique_cuisine_per_episode_and_cook();
