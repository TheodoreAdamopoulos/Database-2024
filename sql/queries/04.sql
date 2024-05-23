---------------- 3.4 ----------------
SELECT
    c.id,
    c.first_name,
    c.last_name
FROM
    Cook c
LEFT JOIN
    Judge_Episode je ON c.id = je.cook_id
WHERE
    je.cook_id IS NULL;
