-- --Prevent More Than 3 Consecutive Participations
-- CREATE OR REPLACE FUNCTION prevent_consecutive_cook_participations()
-- RETURNS TRIGGER AS $$
-- DECLARE
--     count_participations INT;
-- BEGIN
--     -- Count the participations in the last 3 episodes
--     SELECT COUNT(*)
--     INTO count_participations
--     FROM Attempt 
--     WHERE cook_id = NEW.cook_id 
--     AND episode_id IN (
--         SELECT episode_id 
--         FROM Attempt 
--         WHERE cook_id = NEW.cook_id 
--         ORDER BY episode_id DESC 
--         LIMIT 3
--     );

--     -- If count_participations is 3 or more, raise an exception
--     IF count_participations >= 3 THEN
--         RAISE EXCEPTION 'A cook cannot participate in more than 3 consecutive episodes';
--     END IF;

--     RETURN NEW;
-- END;
-- $$ LANGUAGE plpgsql;

-- -- Create the trigger to call the function before inserting into the Attempt table
-- CREATE TRIGGER prevent_consecutive_cook_participations
-- BEFORE INSERT ON Attempt
-- FOR EACH ROW
-- EXECUTE FUNCTION prevent_consecutive_cook_participations();



-- Prevent More Than 3 Consecutive Participations
CREATE OR REPLACE FUNCTION prevent_consecutive_cook_participations()
RETURNS TRIGGER AS $$
DECLARE
    count_participations INT;
    participations RECORD;
BEGIN
    -- Count the participations in the last 3 episodes
    SELECT COUNT(*) INTO count_participations
    FROM (
        SELECT episode_id 
        FROM Attempt 
        WHERE cook_id = NEW.cook_id 
        ORDER BY episode_id DESC 
        LIMIT 3
    ) AS subquery;

    -- If count_participations is 3 or more, raise an exception
    IF count_participations > 3 THEN
        -- Get the episodes that cause the problem
        RAISE NOTICE 'Cook ID: % has participated in the following episodes:', NEW.cook_id;
        FOR participations IN 
            SELECT episode_id 
            FROM Attempt 
            WHERE cook_id = NEW.cook_id 
            ORDER BY episode_id DESC 
            LIMIT 3
        LOOP
            RAISE NOTICE 'Episode ID: %', participations.episode_id;
        END LOOP;
        RAISE EXCEPTION 'A cook cannot participate in more than 3 consecutive episodes';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create the trigger to call the function before inserting into the Attempt table
CREATE TRIGGER prevent_consecutive_cook_participations
BEFORE INSERT ON Attempt
FOR EACH ROW
EXECUTE FUNCTION prevent_consecutive_cook_participations();
