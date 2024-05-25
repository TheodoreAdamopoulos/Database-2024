DELIMITER $$

CREATE FUNCTION calculate_carbohydrates_per_portion(recipe_name VARCHAR(255))
RETURNS DECIMAL(10,2)
BEGIN
    DECLARE total_carbohydrates DECIMAL(10,2) DEFAULT 0;
    DECLARE ingredient_id INT;
    DECLARE quantity DECIMAL(10,2);
    DECLARE carbohydrates_per_100 DECIMAL(10,2);
    DECLARE done INT DEFAULT 0;
    DECLARE cur CURSOR FOR 
        SELECT ir.ingredient_id, ir.quantity
        FROM Ingredient_Recipe ir
        JOIN Recipe r ON ir.recipe_id = r.id
        WHERE r.name = recipe_name;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO ingredient_id, quantity;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Check if quantity is in grams
        IF LOCATE('grams', quantity) > 0 THEN
            -- Extract the numeric part of the quantity
            SET quantity = CAST(SUBSTRING_INDEX(quantity, ' ', 1) AS DECIMAL(10,2));
            
            -- Get carbohydrates per 100 grams from Ingredient table
            SET carbohydrates_per_100 = (SELECT carbohydratesPer100 
                                         FROM Ingredient 
                                         WHERE id = ingredient_id);
            
            -- Calculate and add to total carbohydrates
            SET total_carbohydrates = total_carbohydrates + (quantity * carbohydrates_per_100) / 100;
        END IF;
    END LOOP;
    CLOSE cur;

    RETURN total_carbohydrates;
END$$

DELIMITER ;
