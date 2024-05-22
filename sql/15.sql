---------------- 3.15 ----------------
SELECT id, name, image_url, description
FROM FoodCategory fc
WHERE NOT EXISTS (
    SELECT 1
    FROM Ingredient_FoodCategory ifc
    JOIN Ingredient_Recipe ir ON ifc.ingredient_id = ir.ingredient_id
    WHERE ifc.food_category_id = fc.id
);

