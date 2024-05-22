---------------- 3.9 ----------------
SELECT 
    EXTRACT(YEAR FROM e.release_date) AS year, 
    AVG(nf.carbohydratePerPortion) AS avg_carbs
FROM 
    NutrionFacts nf
JOIN 
    Recipe r ON nf.recipe_id = r.id
JOIN 
    Attempt a ON r.id = a.recipe_id
JOIN 
    Episode e ON a.episode_id = e.id
GROUP BY 
    year;
