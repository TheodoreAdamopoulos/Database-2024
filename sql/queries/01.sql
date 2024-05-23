---------------- 3.1 ----------------
SELECT 
	        co.id, 
	        co.first_name, 
	        co.last_name, 
	        AVG(e.grade)
	    FROM 
	        Cook co
	    LEFT JOIN 
	        Attempt a ON co.id = a.cook_id
	    JOIN 
	        Evaluation e ON a.id = e.attempt_id
	    GROUP BY 
	        co.id, co.first_name, co.last_name;