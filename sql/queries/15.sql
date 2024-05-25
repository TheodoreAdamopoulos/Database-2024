SELECT
  fc.id,
  fc.name,
  fc.description
FROM
  FoodCategory fc
WHERE
  fc.id NOT IN (
    SELECT
      i.food_category_id
    FROM
      Ingredient i
      JOIN Recipe r ON r.ingredient_id = i.id
      JOIN Attempt a ON a.recipe_id = r.id
  );