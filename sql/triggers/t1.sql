--Prevent Judges from evaluating the same attempt more than once
CREATE OR REPLACE FUNCTION prevent_duplicate_evaluation()
RETURNS TRIGGER AS $$
BEGIN
    IF (SELECT COUNT(*)
        FROM Evaluation
        WHERE cook_id = NEW.cook_id
        AND attempt_id = NEW.attempt_id) > 0 THEN
        RAISE EXCEPTION 'A cook cannot evaluate the same attempt more than once';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER prevent_duplicate_evaluation
BEFORE INSERT ON Evaluation
FOR EACH ROW
EXECUTE FUNCTION prevent_duplicate_evaluation();