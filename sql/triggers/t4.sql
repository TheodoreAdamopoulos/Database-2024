--Ensure Judges Do Not Participate in Consecutive Episodes
CREATE OR REPLACE FUNCTION prevent_consecutive_judge_participations()
RETURNS TRIGGER AS $$
DECLARE
    recent_episode INT;
BEGIN
    -- Get the most recent episode_id where the cook was a judge
    SELECT a.episode_id 
    INTO recent_episode
    FROM Evaluation e
    JOIN Attempt a ON e.attempt_id = a.id
    WHERE e.cook_id = NEW.cook_id
    ORDER BY a.episode_id DESC 
    LIMIT 1;

    -- Check if the new episode is consecutive to the recent episode
    IF recent_episode = (SELECT episode_id FROM Attempt WHERE id = NEW.attempt_id) - 1 THEN
        RAISE EXCEPTION 'A judge cannot participate in consecutive episodes';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create the trigger to call the function before inserting into the Evaluation table
CREATE TRIGGER prevent_consecutive_judge_participations
BEFORE INSERT ON Evaluation
FOR EACH ROW
EXECUTE FUNCTION prevent_consecutive_judge_participations();