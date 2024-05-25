--Ensure Each Cook Receives a New Recipe
CREATE OR REPLACE FUNCTION new_recipe_for_cook()
RETURNS TRIGGER AS $$
DECLARE
    recent_recipe INT;
BEGIN
    -- Get the most recent recipe for the cook
    SELECT recipe_id 
    INTO recent_recipe
    FROM Attempt 
    WHERE cook_id = NEW.cook_id 
    ORDER BY episode_id DESC 
    LIMIT 1;
    
    -- Check if the new recipe is the same as the recent recipe
    IF recent_recipe = NEW.recipe_id THEN
        RAISE EXCEPTION 'A cook must receive a new recipe in each episode';
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create the trigger to call the function before inserting into the Attempt table
CREATE TRIGGER new_recipe_for_cook
BEFORE INSERT ON Attempt
FOR EACH ROW
EXECUTE FUNCTION new_recipe_for_cook();