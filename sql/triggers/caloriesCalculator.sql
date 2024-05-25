--Calculate Calories Per Serving
CREATE OR REPLACE FUNCTION calculate_calories_per_portion()
RETURNS TRIGGER AS $$
DECLARE
    total_calories DECIMAL(10,2) DEFAULT 0;
    ingredient_id INT;
    quantity_text TEXT;
    quantity DECIMAL(10,2);
    calories_per_100 DECIMAL(10,2);
BEGIN
    -- Declare a cursor to fetch ingredient details
    FOR ingredient_id, quantity_text IN
        SELECT ir.ingredient_id, ir.quantity
        FROM Ingredient_Recipe ir
        WHERE ir.recipe_id = NEW.id
    LOOP
        -- Check if quantity is in grams
        IF POSITION('grams' IN quantity_text) > 0 THEN
            -- Extract the numeric part of the quantity
            quantity := CAST(SPLIT_PART(quantity_text, ' ', 1) AS DECIMAL(10,2));
            
            -- Get calories per 100 grams from Ingredient table
            SELECT caloriesPer100 
            INTO calories_per_100
            FROM Ingredient 
            WHERE id = ingredient_id;
            
            -- Calculate and add to total calories
            total_calories := total_calories + (quantity * calories_per_100) / 100;
        END IF;
    END LOOP;

    -- Set the calories per portion
    NEW.calories_per_portion := total_calories / NEW.serving_size;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create the trigger
CREATE TRIGGER calculate_calories_per_portion
BEFORE INSERT OR UPDATE ON Recipe
FOR EACH ROW
EXECUTE FUNCTION calculate_calories_per_portion();
