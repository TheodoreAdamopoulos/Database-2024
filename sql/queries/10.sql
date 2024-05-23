---------------- 3.10 ----------------
WITH YearlyCuisineCounts AS (
    SELECT 
        cu.nationality, 
        EXTRACT(YEAR FROM e.release_date) AS year, 
        COUNT(*) AS participation_count
    FROM 
        Cuisine cu
    JOIN 
        Cook_Cuisine cc ON cu.id = cc.cuisine_id
    JOIN 
        Cook c ON cc.cook_id = c.id
    JOIN 
        Attempt a ON c.id = a.cook_id
    JOIN 
        Episode e ON a.episode_id = e.id
    GROUP BY 
        cu.nationality, year
    HAVING 
        COUNT(*) >= 3
)
SELECT 
    y1.nationality, 
    y1.participation_count
FROM 
    YearlyCuisineCounts y1
JOIN 
    YearlyCuisineCounts y2 ON y1.nationality = y2.nationality AND y1.year = y2.year - 1
WHERE 
    y1.participation_count = y2.participation_count;
