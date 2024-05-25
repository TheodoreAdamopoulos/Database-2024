---------------- 3.4 ----------------
SELECT
    c.id,
    c.first_name,
    c.last_name
FROM
    Cook c
LEFT JOIN
    evaluation e ON c.id = e.cook_id
WHERE
    e.cook_id IS NULL;
