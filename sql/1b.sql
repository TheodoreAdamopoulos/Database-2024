SELECT
  cu.id,
  cu.nationality,
  AVG(e.grade)
FROM
  Cuisine cu
  LEFT JOIN Attempt a ON cu.id = a.cuisine_id
  JOIN Evaluation e ON a.id = e.attempt_id
GROUP BY
  cu.id,
  cu.nationality;