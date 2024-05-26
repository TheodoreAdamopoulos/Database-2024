WITH
  episode_cooks AS (
    SELECT
      c.id AS cook_id,
      EXTRACT(
        YEAR
        FROM
          e.release_date
      ) AS release_year,
      COUNT(*) AS episode_count
    FROM
      Cook c
      JOIN Attempt a ON c.id = a.cook_id
      JOIN Episode e ON a.episode_id = e.id
    GROUP BY
      c.id,
      release_year
    HAVING
      COUNT(*) > 3
  )
SELECT
  e1.cook_id as cook_id_1,
  e2.cook_id as cook_id_2,
  e1.release_year,
  e1.episode_count
FROM
  episode_cooks e1
  JOIN episode_cooks e2 ON e1.cook_id < e2.cook_id
  AND e1.episode_count = e2.episode_count
  AND e1.release_year = e2.release_year;