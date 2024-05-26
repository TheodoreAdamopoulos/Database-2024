WITH
  judge_cook_score AS (
    SELECT
      e.cook_id AS judge_id,
      a.cook_id AS cook_id,
      SUM(e.grade) AS total_grade
    FROM
      evaluation e
      JOIN attempt a ON e.attempt_id = a.id
    GROUP BY
      e.cook_id,
      a.cook_id
  )
SELECT
  jcs.judge_id,
  j.first_name AS judge_first_name,
  j.last_name as judge_last_name,
  jcs.cook_id,
  c.first_name AS cook_first_name,
  c.last_name as cook_last_name,
  jcs.total_grade AS max_grade
FROM
  judge_cook_score jcs
  JOIN Cook j ON jcs.judge_id = j.id
  JOIN Cook c ON jcs.cook_id = c.id
ORDER BY
  jcs.total_grade DESC
LIMIT 5;
