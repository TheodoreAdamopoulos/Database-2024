-- Create the function to check the number of episodes per year
CREATE OR REPLACE FUNCTION check_episode_count()
RETURNS TRIGGER AS $$
DECLARE
    episode_year INT;
    episode_count INT;
BEGIN
    -- Extract the year from the episode release_date
    episode_year := EXTRACT(YEAR FROM NEW.release_date);

    -- Count the number of episodes for the given year
    SELECT COUNT(*)
    INTO episode_count
    FROM Episode
    WHERE EXTRACT(YEAR FROM release_date) = episode_year;

    -- Raise an exception if the episode count exceeds 10
    IF episode_count >= 10 THEN
        RAISE EXCEPTION 'Cannot have more than 10 episodes in a year';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create the trigger to call the function
CREATE TRIGGER trigger_check_episode_count
BEFORE INSERT ON Episode
FOR EACH ROW
EXECUTE FUNCTION check_episode_count();
