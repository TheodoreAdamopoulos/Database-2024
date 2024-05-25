---------------- 3.14 ----------------
SELECT 
    t.id,
    t.name,
    t.description,
    COUNT(a.id) AS total_appearances
FROM 
    Topic t
JOIN 
    Topic_Recipe tr ON t.id = tr.topic_id
JOIN 
    Attempt a ON tr.recipe_id = a.recipe_id
GROUP BY 
    t.id, t.name, t.description
ORDER BY 
    total_appearances DESC;
