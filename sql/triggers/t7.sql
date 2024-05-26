-- Create the function to check the number of tips
CREATE OR REPLACE FUNCTION check_recipe_tips()
RETURNS TRIGGER AS $$
DECLARE
    tip_count INT;
BEGIN
    -- Count the number of tips for the recipe
    SELECT COUNT(*)
    INTO tip_count
    FROM RecipeTip
    WHERE recipe_id = NEW.recipe_id;

    -- Raise an exception if the tip count exceeds 3
    IF tip_count >= 3 THEN
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