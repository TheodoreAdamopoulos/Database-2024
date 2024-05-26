-- --Prevent More Than 3 Consecutive Participations
-- Drop the previous trigger if it exists
DROP TRIGGER IF EXISTS check_cook_consecutive_episodes_trigger ON Attempt CASCADE;

-- Drop the previous trigger function if it exists
DROP FUNCTION IF EXISTS check_cook_consecutive_episodes CASCADE;

-- Create the trigger function for cook participation
CREATE OR REPLACE FUNCTION check_cook_consecutive_episodes() RETURNS TRIGGER AS $$
DECLARE
    consecutive_count INT;
BEGIN
    -- Check if the cook has participated in the last three consecutive episodes
    SELECT COUNT(*)
    INTO consecutive_count
    FROM (
        SELECT episode_id
        FROM Attempt
        WHERE cook_id = NEW.cook_id
        ORDER BY episode_id DESC
        LIMIT 3
    ) subquery;

    IF consecutive_count > 3 THEN
        RAISE EXCEPTION 'Cook cannot participate in more than 3 consecutive episodes';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create the trigger for cook participation
CREATE TRIGGER check_cook_consecutive_episodes_trigger
BEFORE INSERT ON Attempt
FOR EACH ROW
EXECUTE FUNCTION check_cook_consecutive_episodes();

