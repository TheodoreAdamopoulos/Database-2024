-- CREATE INDEX idx_attempt_episode_id ON Attempt(episode_id);
CREATE INDEX idx_tool_recipe_recipe_id ON Tool_Recipe(recipe_id);

EXPLAIN ANALYZE
SELECT 
    e.id AS episode_id, 
    COUNT(tr.tool_id) AS tool_count
FROM 
    Episode e
JOIN 
    Attempt a ON e.id = a.episode_id
JOIN 
    Tool_Recipe tr ON a.recipe_id = tr.recipe_id
GROUP BY 
    e.id
ORDER BY 
    tool_count DESC
LIMIT 1;
