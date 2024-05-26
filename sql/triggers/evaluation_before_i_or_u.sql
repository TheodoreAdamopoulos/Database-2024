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
