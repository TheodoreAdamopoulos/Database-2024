-- SELECT
--   lr1.label_id AS label1_id,
--   lr2.label_id AS label2_id,
--   count(*)
-- FROM
--   Label_Recipe lr1
--   JOIN Label_Recipe lr2 ON lr1.recipe_id = lr2.recipe_id
--   AND lr1.label_id < lr2.label_id
-- WHERE
--   lr1.recipe_id IN (
--     SELECT
--       a.recipe_id
--     FROM
--       attempt a
--   )
-- GROUP BY
--   lr1.label_id,
--   lr2.label_id
-- ORDER BY
--   count(*) DESC
-- LIMIT
--   3;

---------------- 3.6 ----------------
EXPLAIN ANALYZE
SELECT
  lr1.label_id AS label1_id,
  lr2.label_id AS label2_id,
  COUNT(*) AS COUNT
FROM
  Label_Recipe lr1
  JOIN Label_Recipe lr2 ON lr1.recipe_id = lr2.recipe_id
  AND lr1.label_id < lr2.label_id
  JOIN Attempt a ON lr1.recipe_id = a.recipe_id
GROUP BY
  lr1.label_id,
  lr2.label_id
ORDER BY
  COUNT DESC
LIMIT
  3;