-- Create the function to check the number of judges, duplicates, and cuisine constraints
CREATE OR REPLACE FUNCTION check_judges_constraints()
RETURNS TRIGGER AS $$
DECLARE
    total_judges INT;
    duplicate_count INT;
    cuisine_count INT;
BEGIN
    -- Only proceed if the new record's role is 'judge'
    IF NEW.role = 'judge' THEN
        -- Count the total number of judges
        SELECT COUNT(*) INTO total_judges FROM Cook WHERE role = 'judge';

        -- Check if the total number of judges exceeds 3
        IF total_judges >= 3 THEN
            RAISE EXCEPTION 'Cannot have more than 3 judges';
        END IF;

        -- Check for duplicate judges
        SELECT COUNT(*) INTO duplicate_count FROM Cook WHERE id = NEW.id AND role = 'judge';

        IF duplicate_count > 0 THEN
            RAISE EXCEPTION 'Duplicate judge entry is not allowed';
        END IF;

        -- Count the number of judges from the same cuisine
        SELECT COUNT(*) INTO cuisine_count FROM Cook WHERE cuisine_id = NEW.cuisine_id AND role = 'judge';

        IF cuisine_count >= 1 THEN
            RAISE EXCEPTION 'Only one judge per cuisine is allowed';
        END IF;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create the trigger to call the function
CREATE TRIGGER trigger_check_judges_constraints
BEFORE INSERT ON Cook
FOR EACH ROW
EXECUTE FUNCTION check_judges_constraints();
