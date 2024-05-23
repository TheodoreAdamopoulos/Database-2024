---------------- 3.13 ----------------
SELECT 
    e.id AS episode_id, 
    MIN(c.job_title) AS lowest_title
FROM 
    Episode e
JOIN 
    Attempt a ON e.id = a.episode_id
JOIN 
    Cook c ON a.cook_id = c.id
JOIN 
    Judge_Episode je ON e.id = je.episode_id
JOIN 
    Cook jc ON je.cook_id = jc.user_id
GROUP BY 
    e.id
ORDER BY 
    lowest_title ASC
LIMIT 1;
