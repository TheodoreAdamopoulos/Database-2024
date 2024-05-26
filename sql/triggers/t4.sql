--Ensure Judges Do Not Participate in more than 3 Consecutive Episodes
-- -- Drop the previous trigger and its dependencies
-- DROP TRIGGER IF EXISTS check_judge_consecutive_episodes_trigger ON Attempt CASCADE;

-- -- Drop the previous trigger function and its dependencies
-- DROP FUNCTION IF EXISTS check_judge_consecutive_episodes CASCADE;

-- -- Create the new trigger function
-- CREATE OR REPLACE FUNCTION check_judge_consecutive_episodes() RETURNS TRIGGER AS $$
-- DECLARE
--     consecutive_count INT;
-- BEGIN
--     -- Check if the judge (cook) has participated as a judge in the last three consecutive episodes
--     SELECT COUNT(*)
--     INTO consecutive_count
--     FROM (
--         SELECT DISTINCT a.episode_id
--         FROM Evaluation e
--         JOIN Attempt a ON e.attempt_id = a.id
--         WHERE e.cook_id = NEW.cook_id
--         ORDER BY a.episode_id DESC
--         LIMIT 3
--     ) subquery;

--     IF consecutive_count > 3 THEN
--         RAISE EXCEPTION 'Judge cannot participate in more than 3 consecutive episodes';
--     END IF;

--     RETURN NEW;
-- END;
-- $$ LANGUAGE plpgsql;

-- -- Create the new trigger
-- CREATE TRIGGER check_judge_consecutive_episodes_trigger
-- BEFORE INSERT ON Evaluation
-- FOR EACH ROW
-- EXECUTE FUNCTION check_judge_consecutive_episodes();



-- Drop the previous trigger if it exists
DROP TRIGGER IF EXISTS check_judge_consecutive_episodes_trigger ON Evaluation CASCADE;

-- Drop the previous trigger function if it exists
DROP FUNCTION IF EXISTS check_judge_consecutive_episodes CASCADE;

-- Create the trigger function for judge participation
CREATE OR REPLACE FUNCTION check_judge_consecutive_episodes() RETURNS TRIGGER AS $$
DECLARE
    consecutive_count INT;
BEGIN
    -- Check the number of participations of the judge in the last three episodes by release_date
    SELECT COUNT(DISTINCT e.id)
    INTO consecutive_count
    FROM Evaluation ev
    JOIN Attempt a ON ev.attempt_id = a.id
    JOIN Episode e ON a.episode_id = e.id
    WHERE ev.cook_id = NEW.cook_id
    AND e.release_date IN (
        SELECT release_date
        FROM Episode
        ORDER BY release_date DESC
        LIMIT 3
    );

    IF consecutive_count >= 3 THEN
        RAISE EXCEPTION 'Judge cannot participate in more than 3 consecutive episodes';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create the trigger for judge participation
CREATE TRIGGER check_judge_consecutive_episodes_trigger
BEFORE INSERT ON Evaluation
FOR EACH ROW
EXECUTE FUNCTION check_judge_consecutive_episodes();