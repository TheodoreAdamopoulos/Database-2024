-- Prevent Duplicate Judges per episode
CREATE OR REPLACE FUNCTION prevent_duplicate_judge_per_episode()
RETURNS TRIGGER AS $$
DECLARE
    current_episode_id INT;
    duplicate_count INT;
BEGIN
    -- Get the episode_id from the Attempt table
    SELECT a.episode_id INTO current_episode_id 
    FROM Attempt a 
    WHERE a.id = NEW.attempt_id;

    -- Check if the cook_id already exists as a judge in the same episode in the Evaluation table
    SELECT COUNT(*)
    INTO duplicate_count
    FROM Evaluation e
    JOIN Attempt a ON e.attempt_id = a.id
    WHERE e.cook_id = NEW.cook_id
    AND a.episode_id = current_episode_id;

    IF duplicate_count > 0 THEN
        RAISE EXCEPTION 'A cook cannot be selected more than once as a judge in the same episode';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER prevent_duplicate_judge_per_episode
BEFORE INSERT ON Evaluation
FOR EACH ROW
EXECUTE FUNCTION prevent_duplicate_judge_per_episode();
