--Prevent Duplicate Judges per episode --Maybe we'll not use this one
CREATE TRIGGER prevent_duplicate_judge_per_episode
BEFORE INSERT ON Judge_Episode
FOR EACH ROW
BEGIN
    DECLARE duplicate_count INT;

    -- Check if the cook_id already exists in the same episode
    SET duplicate_count = (SELECT COUNT(*)
                           FROM Judge_Episode
                           WHERE cook_id = NEW.cook_id
                           AND episode_id = NEW.episode_id);

    IF duplicate_count > 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'A cook cannot be selected more than once as a judge in the same episode';
    END IF;
END;


--Prevent Duplicate Judges per episode
CREATE TRIGGER prevent_duplicate_judge_per_episode
BEFORE INSERT ON Evaluation
FOR EACH ROW
BEGIN
    DECLARE episode_id INT;
    DECLARE duplicate_count INT;

    -- Get the episode_id from the Attempt table
    SET episode_id = (SELECT episode_id FROM Attempt WHERE id = NEW.attempt_id);

    -- Check if the cook_id already exists as a judge in the same episode in the Evaluation table
    SET duplicate_count = (SELECT COUNT(*)
                           FROM Evaluation e
                           JOIN Attempt a ON e.attempt_id = a.id
                           WHERE e.cook_id = NEW.cook_id
                           AND a.episode_id = episode_id);

    IF duplicate_count > 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'A cook cannot be selected more than once as a judge in the same episode';
    END IF;
END;


--Prevent More Than 3 Consecutive Participations
CREATE TRIGGER prevent_consecutive_cook_participations
BEFORE INSERT ON Attempt
FOR EACH ROW
BEGIN
    DECLARE count_participations INT;
    SET count_participations = (SELECT COUNT(*) 
                                FROM Attempt 
                                WHERE cook_id = NEW.cook_id 
                                AND episode_id IN (SELECT episode_id 
                                                   FROM (SELECT episode_id 
                                                         FROM Attempt 
                                                         WHERE cook_id = NEW.cook_id 
                                                         ORDER BY episode_id DESC 
                                                         LIMIT 3) AS subquery));
    IF count_participations >= 3 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'A cook cannot participate in more than 3 consecutive episodes';
    END IF;
END;

--Ensure Each Cook Receives a New Recipe
CREATE TRIGGER new_recipe_for_cook
BEFORE INSERT ON Attempt
FOR EACH ROW
BEGIN
    DECLARE recent_recipe INT;
    SET recent_recipe = (SELECT recipe_id 
                         FROM Attempt 
                         WHERE cook_id = NEW.cook_id 
                         ORDER BY episode_id DESC 
                         LIMIT 1);
    IF recent_recipe = NEW.recipe_id THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'A cook must receive a new recipe in each episode';
    END IF;
END;

--Ensure Judges Do Not Participate in Consecutive Episodes
CREATE TRIGGER prevent_consecutive_judge_participations
BEFORE INSERT ON Judge_Episode
FOR EACH ROW
BEGIN
    DECLARE recent_judge_participation INT;
    SET recent_judge_participation = (SELECT episode_id 
                                      FROM Judge_Episode 
                                      WHERE cook_id = NEW.cook_id 
                                      ORDER BY episode_id DESC 
                                      LIMIT 1);
    IF recent_judge_participation = NEW.episode_id - 1 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'A judge cannot participate in consecutive episodes';
    END IF;
END;

--Calculate Calories Per Serving
DELIMITER $$

CREATE TRIGGER calculate_calories_per_portion
BEFORE INSERT OR UPDATE ON Recipe
FOR EACH ROW
BEGIN
    DECLARE total_calories DECIMAL(10,2) DEFAULT 0;
    DECLARE ingredient_id INT;
    DECLARE quantity DECIMAL(10,2);
    DECLARE calories_per_100 DECIMAL(10,2);
    DECLARE done INT DEFAULT 0;
    DECLARE cur CURSOR FOR 
        SELECT ir.ingredient_id, ir.quantity
        FROM Ingredient_Recipe ir
        WHERE ir.recipe_id = NEW.id;
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
            
            -- Get calories per 100 grams from Ingredient table
            SET calories_per_100 = (SELECT caloriesPer100 
                                    FROM Ingredient 
                                    WHERE id = ingredient_id);
            
            -- Calculate and add to total calories
            SET total_calories = total_calories + (quantity * calories_per_100) / 100;
        END IF;
    END LOOP;
    CLOSE cur;

    SET NEW.calories_per_portion = total_calories / NEW.serving_size;
END$$

DELIMITER ;
