CREATE INDEX idx_label_recipe_recipe_id ON Label_Recipe(recipe_id);
CREATE INDEX idx_label_recipe_label_id ON Label_Recipe(label_id);
CREATE INDEX idx_attempt_recipe_id ON Attempt(recipe_id);


-- EXPLAIN ANALYZE
SELECT 
    lr1.label_id AS label1_id, 
    lr2.label_id AS label2_id, 
    COUNT(*) AS count
FROM 
    Label_Recipe lr1 FORCE INDEX (index_recipe_label)
JOIN 
    Label_Recipe lr2 FORCE INDEX (index_recipe_label) ON lr1.recipe_id = lr2.recipe_id AND lr1.label_id < lr2.label_id
JOIN 
    Attempt a FORCE INDEX (index_attempt_recipe) ON lr1.recipe_id = a.recipe_id
GROUP BY 
    lr1.label_id, lr2.label_id
ORDER BY 
    count DESC
LIMIT 3;
