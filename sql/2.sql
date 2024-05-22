---------------- 3.2 ----------------
CREATE FUNCTION AverageRatingByCuisine () RETURNS TABLE (
  id INT,
  nationality VARCHAR(255),
  avg_rate NUMERIC
) LANGUAGE PLPGSQL AS $$
BEGIN
	RETURN QUERY
	    SELECT 
	        cu.id, 
	        cu.nationality, 
	        AVG(e.grade)
	    FROM 
	        Cuisine cu
	    LEFT JOIN 
	        Attempt a ON cu.id = a.cuisine_id
	    JOIN 
	        Evaluation e ON a.id = e.attempt_id
	    GROUP BY 
	        cu.id, cu.nationality;
END;
$$;