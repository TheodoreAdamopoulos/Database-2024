WITH
  YearlyCuisineCounts AS (
    SELECT
      cu.id,
      cu.nationality,
      EXTRACT(
        YEAR
        FROM
          e.release_date
      ) AS YEAR,
      COUNT(*) AS participation_count
    FROM
      Cuisine cu
      JOIN Cook_Cuisine cc ON cu.id = cc.cuisine_id
      JOIN Cook c ON cc.cook_id = c.id
      JOIN Attempt a ON c.id = a.cook_id
      JOIN Episode e ON a.episode_id = e.id
    GROUP BY
      cu.id,
      cu.nationality,
      YEAR
    HAVING
      COUNT(*) >= 3
  ),
  TwoYearsParticipationCount AS (
    SELECT
      y1.id,
      y1.nationality,
      y1.year AS start_year,
      y1.participation_count + y2.participation_count AS total_participation_count
    FROM
      YearlyCuisineCounts y1
      JOIN YearlyCuisineCounts y2 ON y1.id = y2.id
      AND y1.year = y2.year - 1
  )
SELECT
  s.nationality,
  t.nationality,
  s.start_year,
  s.total_participation_count
FROM
  TwoYearsParticipationCount s
  JOIN TwoYearsParticipationCount t ON s.total_participation_count = t.total_participation_count
  and s.start_year = t.start_year
  AND s.id != t.id