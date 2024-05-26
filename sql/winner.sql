-- Drop the existing function if it exists
DROP FUNCTION IF EXISTS calculate_winner(integer);

-- Create the function to calculate the winner of an episode
CREATE OR REPLACE FUNCTION calculate_winner(p_episode_id INT)
RETURNS TABLE(cook_id INT, winner BOOLEAN) AS $$
DECLARE
    highest_score INT;
    highest_training INT;
BEGIN
    -- Find the highest score in the episode
    SELECT MAX(e.grade) INTO highest_score
    FROM Evaluation e
    JOIN Attempt a ON e.attempt_id = a.id
    WHERE a.episode_id = p_episode_id;

    -- Debugging: Print highest score
    RAISE NOTICE 'Highest score: %', highest_score;

    -- Find the cooks with the highest score
    RETURN QUERY
    WITH job_title_mapping AS (
        SELECT 'Chef' AS job_title, 5 AS numeric_value
        UNION ALL
        SELECT 'Assistant Chef', 4
        UNION ALL
        SELECT 'Cook A', 3
        UNION ALL
        SELECT 'Cook B', 2
        UNION ALL
        SELECT 'Cook C', 1
    )
    SELECT c.id, FALSE
    FROM Cook c
    JOIN Attempt a ON c.id = a.cook_id
    JOIN Evaluation e ON a.id = e.attempt_id
    JOIN job_title_mapping jtm ON c.job_title = jtm.job_title
    WHERE a.episode_id = p_episode_id
    AND e.grade = highest_score;

    -- If there are multiple cooks with the highest score, find the one(s) with the highest professional training
    IF FOUND THEN
        WITH job_title_mapping AS (
            SELECT 'Chef' AS job_title, 5 AS numeric_value
            UNION ALL
            SELECT 'Assistant Chef', 4
            UNION ALL
            SELECT 'Cook A', 3
            UNION ALL
            SELECT 'Cook B', 2
            UNION ALL
            SELECT 'Cook C', 1
        )
        SELECT MAX(jtm.numeric_value) INTO highest_training
        FROM Cook c
        JOIN Attempt a ON c.id = a.cook_id
        JOIN Evaluation e ON a.id = e.attempt_id
        JOIN job_title_mapping jtm ON c.job_title = jtm.job_title
        WHERE a.episode_id = p_episode_id
        AND e.grade = highest_score;

        -- Return cooks with highest training
        RETURN QUERY
        WITH job_title_mapping AS (
            SELECT 'Chef' AS job_title, 5 AS numeric_value
            UNION ALL
            SELECT 'Assistant Chef', 4
            UNION ALL
            SELECT 'Cook A', 3
            UNION ALL
            SELECT 'Cook B', 2
            UNION ALL
            SELECT 'Cook C', 1
        )
        SELECT c.id, FALSE
        FROM Cook c
        JOIN Attempt a ON c.id = a.cook_id
        JOIN Evaluation e ON a.id = e.attempt_id
        JOIN job_title_mapping jtm ON c.job_title = jtm.job_title
        WHERE a.episode_id = p_episode_id
        AND e.grade = highest_score
        AND jtm.numeric_value = highest_training;
    END IF;

    -- If there is still a tie, select a random winner among the tied cooks
    IF FOUND THEN
        RETURN QUERY
        WITH job_title_mapping AS (
            SELECT 'Chef' AS job_title, 5 AS numeric_value
            UNION ALL
            SELECT 'Assistant Chef', 4
            UNION ALL
            SELECT 'Cook A', 3
            UNION ALL
            SELECT 'Cook B', 2
            UNION ALL
            SELECT 'Cook C', 1
        )
        SELECT c.id, TRUE
        FROM Cook c
        JOIN Attempt a ON c.id = a.cook_id
        JOIN Evaluation e ON a.id = e.attempt_id
        JOIN job_title_mapping jtm ON c.job_title = jtm.job_title
        WHERE a.episode_id = p_episode_id
        AND e.grade = highest_score
        AND jtm.numeric_value = highest_training
        ORDER BY RANDOM()
        LIMIT 1;
    END IF;

    RETURN;
END;
$$ LANGUAGE plpgsql;

-- Example of how to call the function
SELECT * FROM calculate_winner(1);

