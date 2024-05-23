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

---------------- 3.2 ----------------
DROP FUNCTION IF EXISTS CooksByCuisineAndYear ();

CREATE FUNCTION CooksByCuisineAndYear (cuisine VARCHAR(255), year INT) RETURNS TABLE (
  cook_id INT,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
) LANGUAGE PLPGSQL AS $$
BEGIN
    RETURN QUERY
    SELECT 
        c.id, 
        c.first_name, 
        c.last_name
    FROM 
        Cook c
    JOIN 
        Cook_Cuisine cc ON c.id = cc.cook_id
    JOIN 
        Cuisine cu ON cc.cuisine_id = cu.id
    JOIN 
        Attempt a ON c.id = a.cook_id
    JOIN 
        Episode e ON a.episode_id = e.id
    WHERE 
        cu.nationality = cuisine AND EXTRACT(YEAR FROM e.release_date) = year;
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

---------------- 3.4 ----------------
DROP FUNCTION IF EXISTS CooksNeverJudged ();

CREATE FUNCTION CooksNeverJudged () RETURNS TABLE (
  id INT,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
) LANGUAGE PLPGSQL AS $$
BEGIN
    RETURN QUERY
    SELECT
        c.id,
        c.first_name,
        c.last_name
    FROM
        Cook c
    LEFT JOIN
        Judge_Episode je ON c.id = je.cook_id
    WHERE
        je.cook_id IS NULL;
END;
$$;

---------------- 3.5 ----------------
DROP FUNCTION IF EXISTS JudgesWithConsistentParticipation ();

CREATE FUNCTION JudgesWithConsistentParticipation (year INT) RETURNS TABLE (
  id INT,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  episode_count INT
) LANGUAGE PLPGSQL AS $$
BEGIN
    RETURN QUERY
    SELECT 
        c.id, 
        c.first_name, 
        c.last_name, 
        COUNT(je.episode_id) AS episode_count
    FROM 
        Cook c
    JOIN 
        Judge_Episode je ON c.id = je.cook_id
    JOIN 
        Episode e ON je.episode_id = e.id
    WHERE 
        EXTRACT(YEAR FROM e.release_date) = year
    GROUP BY 
        c.id, c.first_name, c.last_name
    HAVING 
        COUNT(je.episode_id) > 3;
END;
$$;

---------------- 3.6 ----------------
DROP FUNCTION IF EXISTS TopLabelPairsInEpisodes ();

CREATE FUNCTION TopLabelPairsInEpisodes () RETURNS TABLE (
  label1_id INT,
  label2_id INT,
  count INT
) LANGUAGE PLPGSQL AS $$
BEGIN
    RETURN QUERY
    SELECT 
        lr1.label_id AS label1_id, 
        lr2.label_id AS label2_id, 
        COUNT(*) AS count
    FROM 
        Label_Recipe lr1
    JOIN 
        Label_Recipe lr2 ON lr1.recipe_id = lr2.recipe_id AND lr1.label_id < lr2.label_id
    JOIN 
        Attempt a ON lr1.recipe_id = a.recipe_id
    GROUP BY 
        lr1.label_id, lr2.label_id
    ORDER BY 
        count DESC
    LIMIT 3;
END;
$$;

---------------- 3.7 ----------------
DROP FUNCTION IF EXISTS CooksWithLeastParticipations ();

CREATE FUNCTION CooksWithLeastParticipations () RETURNS TABLE (
  id INT,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  participation_count INT
) LANGUAGE PLPGSQL AS $$
BEGIN
    RETURN QUERY
    WITH CookParticipation AS (
        SELECT 
            c.id, 
            c.first_name, 
            c.last_name, 
            COUNT(a.id) AS participation_count
        FROM 
            Cook c
        JOIN 
            Attempt a ON c.id = a.cook_id
        GROUP BY 
            c.id
    ), MaxParticipation AS (
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
    JOIN 
        MaxParticipation mp ON 1=1
    WHERE 
        cp.participation_count <= mp.max_count - 5;
END;
$$;

---------------- 3.8 ----------------
DROP FUNCTION IF EXISTS EpisodeWithMostTools ();

CREATE FUNCTION EpisodeWithMostTools () RETURNS TABLE (
  episode_id INT,
  tool_count INT
) LANGUAGE PLPGSQL AS $$
BEGIN
    RETURN QUERY
    SELECT 
        e.id AS episode_id, 
        COUNT(tr.tool_id) AS tool_count
    FROM 
        Episode e
    JOIN 
        Attempt a ON e.id = a.episode_id
    JOIN 
        Tool_Recipe tr ON a.recipe_id = tr.recipe_id
    GROUP BY 
        e.id
    ORDER BY 
        tool_count DESC
    LIMIT 1;
END;
$$;

---------------- 3.9 ----------------
DROP FUNCTION IF EXISTS AverageCarbsPerYear ();

CREATE FUNCTION AverageCarbsPerYear () RETURNS TABLE (
  year INT,
  avg_carbs NUMERIC
) LANGUAGE PLPGSQL AS $$
BEGIN
    RETURN QUERY
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
END;
$$;

---------------- 3.10 ----------------
DROP FUNCTION IF EXISTS CuisinesWithSameParticipation ();

CREATE FUNCTION CuisinesWithSameParticipation () RETURNS TABLE (
  nationality VARCHAR(255),
  participation_count INT
) LANGUAGE PLPGSQL AS $$
BEGIN
    RETURN QUERY
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
END;
$$;

---------------- 3.11 ----------------
DROP FUNCTION IF EXISTS TopJudgesByRating ();

CREATE FUNCTION TopJudgesByRating () RETURNS TABLE (
  judge_first_name VARCHAR(255),
  judge_last_name VARCHAR(255),
  cook_first_name VARCHAR(255),
  cook_last_name VARCHAR(255),
  total_score NUMERIC
) LANGUAGE PLPGSQL AS $$
BEGIN
    RETURN QUERY
    SELECT 
        j.first_name AS judge_first_name, 
        j.last_name AS judge_last_name, 
        c.first_name AS cook_first_name, 
        c.last_name AS cook_last_name, 
        SUM(e.grade) AS total_score
    FROM 
        Evaluation e
    JOIN 
        Attempt a ON e.attempt_id = a.id
    JOIN 
        Cook c ON a.cook_id = c.id
    JOIN 
        Cook j ON e.cook_id = j.id
    GROUP BY 
        j.first_name, j.last_name, c.first_name, c.last_name
    ORDER BY 
        total_score DESC
    LIMIT 5;
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

---------------- 3.13 ----------------
DROP FUNCTION IF EXISTS EpisodeWithLowestExpertise ();

CREATE FUNCTION EpisodeWithLowestExpertise () RETURNS TABLE (
  episode_id INT,
  lowest_title VARCHAR(50)
) LANGUAGE PLPGSQL AS $$
BEGIN
    RETURN QUERY
    SELECT 
        e.id AS episode_id, 
        MIN(c.job_title) AS lowest_title
    FROM 
        Episode e
    JOIN 
        Attempt a ON e.id = a.episode_id
    JOIN 
        Cook c ON a.cook_id = c.id
    JOIN 
        Judge_Episode je ON e.id = je.episode_id
    JOIN 
        Cook jc ON je.cook_id = jc.id
    GROUP BY 
        e.id
    ORDER BY 
        lowest_title ASC
    LIMIT 1;
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
        SELECT id, name, image_url, description
        FROM FoodCategory fc
        WHERE NOT EXISTS (
            SELECT 1
            FROM Ingredient_FoodCategory ifc
            JOIN Ingredient_Recipe ir ON ifc.ingredient_id = ir.ingredient_id
            WHERE ifc.food_category_id = fc.id
        );
END;
$$;



CREATE FUNCTION CalculateRecipeCalories(recipe_id INT) RETURNS NUMERIC AS $$
DECLARE
    total_calories NUMERIC := 0;
    ingredient_id INT;
    quantity NUMERIC;
    calories_per_100g NUMERIC;
    ingredient_calories NUMERIC;
BEGIN
    FOR ingredient_id, quantity, calories_per_100g IN
        SELECT ir.ingredient_id, ir.quantity, i.caloriesPer100
        FROM Ingredient_Recipe ir
        JOIN Ingredient i ON ir.ingredient_id = i.id
        WHERE ir.recipe_id = recipe_id
    LOOP
        ingredient_calories := (quantity * calories_per_100g) / 100;
        total_calories := total_calories + ingredient_calories;
    END LOOP;

    RETURN total_calories;
END;
$$ LANGUAGE plpgsql;