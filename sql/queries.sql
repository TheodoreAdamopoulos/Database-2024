---------------- 3.1 ----------------
DROP FUNCTION IF EXISTS AverageRatingByCook ();

DROP FUNCTION IF EXISTS AverageRatingByCuisine ();

CREATE FUNCTION AverageRatingByCook () RETURNS TABLE (
  id INT,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  avg_rate NUMERIC
) LANGUAGE PLPGSQL AS $$
BEGIN
	RETURN QUERY
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
END;
$$;

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

---------------- 3.3 ----------------
DROP FUNCTION IF EXISTS YoungCooksWithMostRecipes ();

CREATE FUNCTION YoungCooksWithMostRecipes () RETURNS TABLE (
  id INT,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  recipes INT
) LANGUAGE PLPGSQL AS $$
BEGIN
  RETURN QUERY
    SELECT
      co.id,
      co.first_name,
      co.last_name,
      COUNT(*)
    FROM 
      Cook co
    JOIN
      Recipe r ON co.id = r.cook_id
    WHERE 
      DATE_PART('year', age(NOW(), co.date_of_birth)) < 30
    GROUP BY
      co.id, co.first_name, co.last_name
    ORDER BY
      COUNT(*) DESC;

END;
$$;

---------------- 3.12 ----------------
DROP FUNCTION IF EXISTS MostDifficultEpisodePerYear ();

CREATE FUNCTION MostDifficultEpisodePerYear () RETURNS TABLE (
  episode_id INT,
  release_year INT,
  avg_difficulty NUMERIC
) LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY
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
END;
$$;

---------------- 3.14 ----------------
DROP FUNCTION IF EXISTS TopicsWithMostAppearances ();

CREATE FUNCTION TopicsWithMostAppearances () RETURNS TABLE (
  id INT,
  name VARCHAR(255),
  image_url VARCHAR(255),
  description TEXT,
  total_appearances INT
) LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY
        SELECT 
            t.id,
            t.name,
            t.image_url,
            t.description,
            COUNT(a.id) AS total_appearances
        FROM 
            Topic t
        JOIN 
            Topic_Recipe tr ON t.id = tr.topic_id
        JOIN 
            Attempt a ON tr.recipe_id = a.recipe_id
        GROUP BY 
            t.id, t.name, t.image_url, t.description
        ORDER BY 
            total_appearances DESC;
END;
$$;

---------------- 3.15 ----------------
DROP FUNCTION IF EXISTS FoodCategoriesNotAppear ();

CREATE FUNCTION FoodCategoriesNotAppear () RETURNS TABLE (
  id INT,
  name VARCHAR(255),
  image_url VARCHAR(255),
  description TEXT
) LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY
        SELECT id, name
        FROM Category ca
        WHERE id NOT IN (
            SELECT DISTINCT cat.id
            FROM Category cat
            JOIN Ingredient i ON cat.id = i.category_id
            JOIN Ingredient_Recipe ri ON i.id = ri.ingredient_id
            JOIN Attempt a ON ri.recipe_id = a.recipe_id
        );
END;
$$;