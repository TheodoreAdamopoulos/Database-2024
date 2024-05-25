-- ---------------- 3.2 ----------------
-- CREATE OR REPLACE FUNCTION get_cooks_by_cuisine_and_year(cuisine_name VARCHAR, year INT)
-- RETURNS TABLE (
--     cook_id INT,
--     first_name VARCHAR,
--     last_name VARCHAR,
--     participated    
-- ) AS $$
-- BEGIN
--     RETURN QUERY
--     WITH Cooks_by_cuisine AS (
-- 	SELECT DISTINCT
		
-- 		co.id AS cook_id,
-- 		co.first_name AS first_name,
-- 		co.last_name AS last_name,
-- 		e.id AS episode_id
-- 	FROM 
-- 		Cook co
-- 	JOIN 
-- 		Cook_Cuisine cc ON co.id = cc.cook_id
-- 	JOIN
-- 		Cuisine c ON cc.cuisine_id = c.id
-- 	LEFT JOIN 
-- 		Attempt a ON co.id = a.cook_id
-- 	LEFT JOIN 
-- 		Episode e ON a.episode_id = e.id AND EXTRACT(YEAR FROM e.release_date) = 2018
-- 	WHERE 
-- 		c.nationality = 'Greek'
-- 	ORDER BY co.id
-- )
-- SELECT DISTINCT
-- 	c.cook_id AS cook_id,
-- 		c.first_name AS first_name,
-- 		c.last_name AS last_name,
-- 		EXISTS(SELECT 1
-- 				FROM 
-- 					Cooks_by_cuisine cbc
-- 				WHERE 
-- 					cbc.episode_id IS NOT NULL AND cbc.cook_id = c.cook_id
-- 				)
-- FROM Cooks_by_cuisine c;
-- END;
-- $$ LANGUAGE plpgsql;


WITH Cooks_by_cuisine AS (
	SELECT DISTINCT
		
		co.id AS cook_id,
		co.first_name AS first_name,
		co.last_name AS last_name,
		e.id AS episode_id
	FROM 
		Cook co
	JOIN 
		Cook_Cuisine cc ON co.id = cc.cook_id
	JOIN
		Cuisine c ON cc.cuisine_id = c.id
	LEFT JOIN 
		Attempt a ON co.id = a.cook_id
	LEFT JOIN 
		Episode e ON a.episode_id = e.id AND EXTRACT(YEAR FROM e.release_date) = 2018
	WHERE 
		c.nationality = 'Greek'
	ORDER BY co.id
)
SELECT DISTINCT
	c.cook_id AS cook_id,
		c.first_name AS first_name,
		c.last_name AS last_name,
		EXISTS(SELECT 1
				FROM 
					Cooks_by_cuisine cbc
				WHERE 
					cbc.episode_id IS NOT NULL AND cbc.cook_id = c.cook_id
				)
FROM Cooks_by_cuisine c;