---------------- 3.7 ----------------
WITH CookParticipation AS (
    SELECT
        c.id,
        c.first_name,
        c.last_name,
        COUNT(a.id) AS participation_count
    FROM
        Cook c
        JOIN Attempt a ON c.id = a.cook_id
    GROUP BY
        c.id
),
MaxParticipation AS (
    SELECT
        MAX(participation_count) AS max_count
    FROM
        CookParticipation
)
SELECT
    cp.id,
    cp.first_name,
    cp.last_name,
    cp.participation_count
FROM
    CookParticipation cp
    JOIN MaxParticipation mp ON 1 = 1
WHERE
    cp.participation_count <= mp.max_count - 5;