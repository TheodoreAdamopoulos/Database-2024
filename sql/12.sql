---------------- 3.12 ----------------
WITH EpisodeDifficulty AS (
    SELECT
        e.id AS episode_id,
        EXTRACT(YEAR FROM e.release_date) AS release_year,
        AVG(r.difficulty) AS avg_difficulty
    FROM
        Episode e
    JOIN
        Attempt a ON e.id = a.episode_id
    JOIN
        Recipe r ON a.recipe_id = r.id
    GROUP BY
        e.id, release_year
)
SELECT DISTINCT ON (ed.release_year)
    ed.episode_id,
    ed.release_year,
    ed.avg_difficulty
FROM
    EpisodeDifficulty ed
ORDER BY
    ed.release_year,
    ed.avg_difficulty DESC;
