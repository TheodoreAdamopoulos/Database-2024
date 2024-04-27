DROP TABLE IF EXISTS Evaluation;
DROP TABLE IF EXISTS Judge_Episode;
DROP TABLE IF EXISTS Attempt;
DROP TABLE IF EXISTS Episode;
DROP TABLE IF EXISTS Cook_Cuisine;
DROP TABLE IF EXISTS Cook;
DROP TABLE IF EXISTS Topic_Recipe;
DROP TABLE IF EXISTS Topic;
DROP TABLE IF EXISTS NutrionFacts;
DROP TABLE IF EXISTS Ingredient_FoodCategory;
DROP TABLE IF EXISTS FoodCategory;
DROP TABLE IF EXISTS Ingredient_Recipe;
DROP TABLE IF EXISTS Tool_Recipe;
DROP TABLE IF EXISTS Tool;
DROP TABLE IF EXISTS Label_Recipe;
DROP TABLE IF EXISTS Label;
DROP TABLE IF EXISTS Meal_Recipe;
DROP TABLE IF EXISTS Meal;
DROP TABLE IF EXISTS RecipeStep;
DROP TABLE IF EXISTS RecipeTip;
DROP TABLE IF EXISTS Recipe;
DROP TABLE IF EXISTS Ingredient;
DROP TABLE IF EXISTS Cuisine;
DROP TABLE IF EXISTS UserAccount;



CREATE TABLE IF NOT EXISTS UserAccount (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    is_admin BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS Cuisine (
    id SERIAL PRIMARY KEY,
    nationality VARCHAR(255) UNIQUE NOT NULL,
    image_url VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Ingredient (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    image_url VARCHAR(255),
    caloriesPer100 INT
);

CREATE TABLE IF NOT EXISTS Recipe (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    cuisine_id INT NOT NULL,
    description TEXT,
    difficulty SMALLINT CHECK (
        difficulty >= 1
        AND difficulty <= 5
    ),
    -- main ingredient
    ingredient_id INT NOT NULL,
    image_url VARCHAR(255),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(id) ON DELETE RESTRICT,
    FOREIGN KEY (cuisine_id) REFERENCES Cuisine(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS RecipeTip (
    recipe_id INT,
    tip_no INT,
    instructions TEXT NOT NULL,
    PRIMARY KEY (recipe_id, tip_no),
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS RecipeStep (
    recipe_id INT,
    step_no INT,
    description TEXT NOT NULL,
    PRIMARY KEY (recipe_id, step_no),
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Meal (
    id SERIAL PRIMARY KEY,
    type VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Meal_Recipe (
    meal_id INT,
    recipe_id INT,
    PRIMARY KEY (meal_id, recipe_id),
    FOREIGN KEY (meal_id) REFERENCES Meal(id) ON DELETE CASCADE,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Label (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Label_Recipe (
    label_id INT,
    recipe_id INT,
    PRIMARY KEY (label_id, recipe_id),
    FOREIGN KEY (label_id) REFERENCES Label(id) ON DELETE CASCADE,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Tool (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    image_url VARCHAR(255),
    instructions TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Tool_Recipe (
    tool_id INT,
    recipe_id INT,
    PRIMARY KEY (tool_id, recipe_id),
    FOREIGN KEY (tool_id) REFERENCES Tool(id) ON DELETE CASCADE,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Ingredient_Recipe (
    ingredient_id INT,
    recipe_id INT,
    quantity VARCHAR(255) NOT NULL,
    -- number or descriptive word
    PRIMARY KEY (ingredient_id, recipe_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(id) ON DELETE RESTRICT,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS FoodCategory (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    image_url VARCHAR(255),
    description TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Ingredient_FoodCategory (
    ingredient_id INT,
    food_category_id INT,
    PRIMARY KEY (ingredient_id, food_category_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(id) ON DELETE CASCADE,
    FOREIGN KEY (food_category_id) REFERENCES FoodCategory(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS NutrionFacts (
    recipe_id INT,
    sequence INT,
    -- ???
    fatPerPortion INT,
    proteinPerPortion INT,
    carbohydratePerPortion INT,
    -- caloriesPerPortion()
    PRIMARY KEY (recipe_id, sequence),
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Topic (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    image_url VARCHAR(255),
    description TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Topic_Recipe (
    topic_id INT,
    recipe_id INT,
    PRIMARY KEY (topic_id, recipe_id),
    FOREIGN KEY (topic_id) REFERENCES Topic(id) ON DELETE CASCADE,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Cook (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    date_of_birth DATE NOT NULL,
    years_of_experience INTEGER DEFAULT 0,
    image_url VARCHAR(255),
    job_title VARCHAR(50) CHECK (
        job_title IN (
            'Chef',
            'Assistant Chef',
            'Cook A',
            'Cook B',
            'Cook C'
        )
    ) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES UserAccount (id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Cook_Cuisine (
    cook_id INT,
    cuisine_id INT,
    PRIMARY KEY (cook_id, cuisine_id),
    FOREIGN KEY (cook_id) REFERENCES Cook(user_id) ON DELETE CASCADE,
    FOREIGN KEY (cuisine_id) REFERENCES Cuisine(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Episode (
    id SERIAL PRIMARY KEY,
    season_no SMALLINT,
    episode_no SMALLINT,
    release_date DATE
);


CREATE TABLE IF NOT EXISTS Attempt (
    id SERIAL PRIMARY KEY,
    episode_id INT,
    cook_id INT,
    recipe_id INT,
    FOREIGN KEY (episode_id) REFERENCES Episode(id) ON DELETE CASCADE,
    FOREIGN KEY (cook_id) REFERENCES Cook(user_id) ON DELETE SET NULL,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE SET NULL
);

-- cook judges episode

CREATE TABLE IF NOT EXISTS Judge_Episode (
    cook_id INT,
    episode_id INT,
    PRIMARY KEY (cook_id, episode_id),
    FOREIGN KEY (cook_id) REFERENCES Cook(user_id) ON DELETE CASCADE,
    FOREIGN KEY (episode_id) REFERENCES Episode(id) ON DELETE CASCADE
);

-- cook evaluates attempt

CREATE TABLE IF NOT EXISTS Evaluation (
    id SERIAL PRIMARY KEY,
    cook_id INT, --
    attempt_id INT,
    grade SMALLINT CHECK (
        grade >= 1
        AND grade <= 5
    ),
    FOREIGN KEY (cook_id) REFERENCES Cook(user_id) ON DELETE SET NULL,
    FOREIGN KEY (attempt_id) REFERENCES Attempt(id) ON DELETE CASCADE
);