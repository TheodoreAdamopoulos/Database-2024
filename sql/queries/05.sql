---------------- 3.5 ----------------
SELECT 
    c.id, 
    c.first_name, 
    c.last_name, 
    COUNT(je.episode_id) AS episode_count
FROM 
    Cook c
JOIN 
    Judge_Episode je ON c.id = je.cook_id
JOIN 
    Episode e ON je.episode_id = e.id
WHERE 
    EXTRACT(YEAR FROM e.release_date) = %s
GROUP BY 
    c.id, c.first_name, c.last_name
HAVING 
    COUNT(je.episode_id) > 3;
