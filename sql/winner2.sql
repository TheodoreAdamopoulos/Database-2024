WITH job_title_mapping AS (
    SELECT 'Chef' AS job_title, 5 AS numeric_value
    UNION ALL
    SELECT 'Assistant Chef', 4
    UNION ALL
    SELECT 'Cook A', 3
    UNION ALL
    SELECT 'Cook B', 2
    UNION ALL
    SELECT 'Cook C', 1
),

highest_score_cooks AS (
    SELECT 
        c.id AS cook_id,
        jtm.numeric_value,
        e.grade
    FROM 
        Cook c
    JOIN 
        Attempt a ON c.id = a.cook_id
    JOIN 
        Evaluation e ON a.id = e.attempt_id
    JOIN 
        job_title_mapping jtm ON c.job_title = jtm.job_title
    WHERE 
        a.episode_id = 1
    AND 
        e.grade = (SELECT MAX(e2.grade) 
                   FROM Evaluation e2
                   JOIN Attempt a2 ON e2.attempt_id = a2.id
                   WHERE a2.episode_id = 1)
)

SELECT 
    cook_id, 
    TRUE AS winner
FROM 
    highest_score_cooks
WHERE 
    numeric_value = (SELECT MAX(numeric_value) 
                     FROM highest_score_cooks)
ORDER BY 
    RANDOM()
LIMIT 1;
