CREATE TABLE UserAccount (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    is_admin BOOLEAN NOT NULL
);

CREATE TABLE Cuisine (
    id SERIAL PRIMARY KEY,
    nationality VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Ingredient (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    image_url VARCHAR(255),
    caloriesPer100 INT
);

CREATE TABLE Recipe (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    cuisine_id INT NOT NULL,
    description TEXT,
    difficulty INT CHECK (
        difficulty >= 1
        AND difficulty <= 5
    ),
    ingredient_id INT NOT NULL,
    -- main ingredient
    image_url VARCHAR(255),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(id) ON DELETE RESTRICT,
    FOREIGN KEY (cuisine_id) REFERENCES Cuisine(id) ON DELETE CASCADE
);

CREATE TABLE RecipeTip (
    recipe_id INT,
    sequence INT,
    instructions TEXT NOT NULL,
    PRIMARY KEY (recipe_id, sequence),
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE RecipeStep (
    recipe_id INT,
    sequence INT,
    description TEXT NOT NULL,
    PRIMARY KEY (recipe_id, sequence),
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE Meal (
    id SERIAL PRIMARY KEY,
    type VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Meal_Recipe (
    meal_id INT,
    recipe_id INT,
    PRIMARY KEY (meal_id, recipe_id),
    FOREIGN KEY (meal_id) REFERENCES Meal(id) ON DELETE CASCADE,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE Label (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Label_Recipe (
    label_id INT,
    recipe_id INT,
    PRIMARY KEY (label_id, recipe_id),
    FOREIGN KEY (label_id) REFERENCES Label(id) ON DELETE CASCADE,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE Tool (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    image_url VARCHAR(255),
    instructions TEXT NOT NULL
);

CREATE TABLE Tool_Recipe (
    tool_id INT,
    recipe_id INT,
    PRIMARY KEY (tool_id, recipe_id),
    FOREIGN KEY (tool_id) REFERENCES Tool(id) ON DELETE CASCADE,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE Ingredient_Recipe (
    ingredient_id INT,
    recipe_id INT,
    quantity VARCHAR(255) NOT NULL,
    -- number or descriptive word
    PRIMARY KEY (ingredient_id, recipe_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(id) ON DELETE RESTRICT,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE FoodCategory (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    image_url VARCHAR(255),
    description TEXT NOT NULL
);

CREATE TABLE Ingredient_FoodCategory (
    ingredient_id INT,
    food_category_id INT,
    PRIMARY KEY (ingredient_id, food_category_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(id) ON DELETE CASCADE,
    FOREIGN KEY (food_category_id) REFERENCES FoodCategory(id) ON DELETE CASCADE
);

CREATE TABLE NutrionFacts (
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

CREATE TABLE Topic (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    image_url VARCHAR(255),
    description TEXT NOT NULL
);

CREATE TABLE Topic_Recipe (
    topic_id INT,
    recipe_id INT,
    PRIMARY KEY (topic_id, recipe_id),
    FOREIGN KEY (topic_id) REFERENCES Topic(id) ON DELETE CASCADE,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE Cook (
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

CREATE TABLE Cook_Cuisine (
    cook_id INT,
    cuisine_id INT,
    PRIMARY KEY (cook_id, cuisine_id),
    FOREIGN KEY (cook_id) REFERENCES Cook(user_id) ON DELETE CASCADE,
    FOREIGN KEY (cuisine_id) REFERENCES Cuisine(id) ON DELETE CASCADE
);

CREATE TABLE Episode (
    id INT,
    couisine_id INT, -- random result generators
    cook_id INT,     -- Also we need a list from each id
    judje_id INT,    -- (list of cooks, list of judges, list of recipes)(it could be like a list of attempts)    
    recipe_id INT,   -- probably we don't need cuisine as an attribute here
);

CREATE TABLE Attempt (
    id INT,
    episode_id INT,
    cook_id INT,     -- do we actually need 3 ids here?
    --recipe_id INT, -- I think episode and cook are enough
    grade INT, 
    FOREIGN KEY (episode_id) REFERENCES Episode(id) ON DELETE CASCADE,
    FOREIGN KEY (cook_id) REFERENCES Cook(id) ON DELETE CASCADE,
    --FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

-- cook judges episode

CREATE TABLE Cook_Episode (
    cook_id INT,
    episode_id INT,
    PRIMARY KEY (cook_id, episode_id),
    FOREIGN KEY (cook_id) REFERENCES Cook(user_id) ON DELETE CASCADE,
    FOREIGN KEY (episode_id) REFERENCES Episode(id) ON DELETE CASCADE
);

-- cook evaluates attempt

CREATE TABLE Cook_Attempt (
    cook_id INT, -- 
    attempt_id INT,
    PRIMARY KEY (cook_id, attempt_id),
    FOREIGN KEY (cook_id) REFERENCES Cook(user_id) ON DELETE CASCADE,
    FOREIGN KEY (attempt_id) REFERENCES Attempt(id) ON DELETE CASCADE
);