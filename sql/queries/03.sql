SELECT
    co.id,
    co.first_name,
    co.last_name,
    COUNT(DISTINCT a.recipe_id) AS recipes
FROM 
    Cook co
JOIN
    Attempt a ON a.cook_id = co.id
WHERE 
    DATE_PART('year', age(NOW(), co.date_of_birth)) < 30
GROUP BY
    co.id, co.first_name, co.last_name
ORDER BY
    recipes DESC;