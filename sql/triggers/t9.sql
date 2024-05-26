-- Function to check cooks constraints
CREATE OR REPLACE FUNCTION check_cooks_constraints()
RETURNS TRIGGER AS $$
DECLARE
    total_cooks INT;
    distinct_cuisines INT;
BEGIN
    -- Count the total number of cooks
    SELECT COUNT(*) INTO total_cooks FROM Cook;

    -- Check if the new cook already exists
    IF EXISTS (SELECT 1 FROM Cook WHERE id = NEW.id) THEN
        RAISE EXCEPTION 'Duplicate cook entry is not allowed';
    END IF;

    -- Count the number of distinct cuisines represented by the cooks
    SELECT COUNT(DISTINCT c.national_cuisine_id) INTO distinct_cuisines
    FROM Cook c;

    -- Check if the total number of cooks exceeds 10
    IF total_cooks >= 10 THEN
        RAISE EXCEPTION 'Cannot have more than 10 cooks';
    END IF;

    -- Check if the number of distinct cuisines is not equal to the number of cooks
    IF distinct_cuisines >= 10 THEN
        RAISE EXCEPTION 'Each cook must represent a different cuisine';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to enforce cooks constraints
CREATE TRIGGER trigger_check_cooks_constraints
BEFORE INSERT ON Cook
FOR EACH ROW
EXECUTE FUNCTION check_cooks_constraints();
