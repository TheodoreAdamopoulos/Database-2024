---------------- 3.3 ----------------
SELECT
    co.id,
    co.first_name,
    co.last_name,
    COUNT(*) AS recipes
FROM 
    Cook co
JOIN
    Recipe r ON co.id = r.cook_id
WHERE 
    DATE_PART('year', age(NOW(), co.date_of_birth)) < 30
GROUP BY
    co.id, co.first_name, co.last_name
ORDER BY
    COUNT(*) DESC;
