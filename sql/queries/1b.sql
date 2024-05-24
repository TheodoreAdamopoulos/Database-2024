SELECT
  cu.id,
  cu.nationality,
  AVG(e.grade)
FROM
  Cuisine cu
  JOIN Recipe r ON cu.id = r.cuisine_id
  JOIN Attempt a ON r.id = a.recipe_id
  JOIN Evaluation e ON a.id = e.attempt_id
GROUP BY
  cu.id,
  cu.nationality
ORDER BY
  cu.id;