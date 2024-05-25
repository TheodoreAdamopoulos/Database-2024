WITH
  job_title_mapping AS (
    SELECT
      'Chef' AS job_title,
      5 AS numeric_value
    UNION ALL
    SELECT
      'Assistant Chef',
      4
    UNION ALL
    SELECT
      'Cook A',
      3
    UNION ALL
    SELECT
      'Cook B',
      2
    UNION ALL
    SELECT
      'Cook C',
      1
  ),
  episode_cooks AS (
    SELECT DISTINCT
      ep.id AS episode_id,
      ep.release_date,
      c.id,
      jtm.numeric_value AS expertise
    FROM
      Episode ep
      JOIN Attempt a ON ep.id = a.episode_id
      JOIN Evaluation ev ON a.id = ev.attempt_id
      JOIN Cook c ON a.cook_id = c.id
      OR ev.cook_id = c.id
      JOIN job_title_mapping jtm ON c.job_title = jtm.job_title
  )
SELECT
  ec.episode_id,
  ec.release_date,
  sum(ec.expertise) AS total_expertise
FROM
  episode_cooks ec
GROUP BY
  ec.episode_id,
  ec.release_date
ORDER BY
  total_expertise ASC
LIMIT 1;