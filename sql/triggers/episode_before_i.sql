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