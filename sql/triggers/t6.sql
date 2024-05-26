-- Create the function to check difficulty
CREATE OR REPLACE FUNCTION check_difficulty()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.difficulty < 1 OR NEW.difficulty > 5 THEN
        RAISE EXCEPTION 'Difficulty must be between 1 and 5';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create the trigger to call the function
CREATE TRIGGER trigger_check_difficulty
BEFORE INSERT OR UPDATE ON Recipe
FOR EACH ROW
EXECUTE FUNCTION check_difficulty();
