---------------- 3.11 ----------------
SELECT 
    j.first_name AS judge_first_name, 
    j.last_name AS judge_last_name, 
    c.first_name AS cook_first_name, 
    c.last_name AS cook_last_name, 
    SUM(e.grade) AS total_score
FROM 
    Evaluation e
JOIN 
    Attempt a ON e.attempt_id = a.id
JOIN 
    Cook c ON a.cook_id = c.id
JOIN 
    Cook j ON e.cook_id = j.id
GROUP BY 
    j.first_name, j.last_name, c.first_name, c.last_name
ORDER BY 
    total_score DESC
LIMIT 5;
