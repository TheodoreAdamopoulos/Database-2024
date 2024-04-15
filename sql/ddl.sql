CREATE TABLE Cuisine (
    id SERIAL PRIMARY KEY,
    nationality VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Recipe (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    cuisine_id INT NOT NULL,
    description TEXT,
    tip_one TEXT,
    tip_two TEXT,
    tip_three TEXT,
    difficulty INT CHECK (difficulty >= 1 AND difficulty <= 5),
    FOREIGN KEY (cuisine_id) REFERENCES Cuisine(id) ON DELETE CASCADE
);

CREATE TABLE Cuisine_Recipe (
    cuisine_id INT,
    recipe_id INT,
    PRIMARY KEY (cuisine_id, recipe_id),
    FOREIGN KEY (cuisine_id) REFERENCES Cuisine(id) ON DELETE CASCADE,
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
    instructions TEXT NOT NULL
);

CREATE TABLE Tool_Recipe (
    tool_id INT,
    recipe_id INT,
    PRIMARY KEY (tool_id, recipe_id),
    FOREIGN KEY (tool_id) REFERENCES Tool(id) ON DELETE CASCADE,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE Step (
    recipe_id INT,
    sequence INT,
    description TEXT NOT NULL,
    PRIMARY KEY (recipe_id, sequence),
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE Material (
    id INT,
    name VARCHAR(255) UNIQUE NOT NULL,
    quantity TEXT NOT NULL, -- number or descriptive word
    caloriesPer100 INT
);

CREATE TABLE Material_Recipe (
    material_id INT,
    recipe_id INT,
    PRIMARY KEY (material_id, recipe_id),
    FOREIGN KEY (material_id) REFERENCES Material(id) ON DELETE CASCADE,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE FoodCatergory (
    id INT,
    name VARCHAR(255) UNIQUE NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE Material_FoodCatergory (
    material_id INT,
    FoodCatergory_id INT,
    PRIMARY KEY (material_id, foodCatergory_id),
    FOREIGN KEY (material_id) REFERENCES Material(id) ON DELETE CASCADE,
    FOREIGN KEY (foodCatergory_id) REFERENCES FoodCatergory(id) ON DELETE CASCADE
);

CREATE TABLE NutrionFacts (
    recipe_id INT,
    sequence INT,    -- ???
    fatPerPortion INT,
    proteinPerPortion INT,
    carbohydratePerPortion INT,
    caloriesPerPortion()
    PRIMARY KEY (recipe_id, sequence),
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE Topic (
    id INT,
    name VARCHAR(255) UNIQUE NOT NULL,
    description TEXT NOT NULL,
);

CREATE TABLE Topic_Recipe (
    topic_id INT,
    recipe_id INT,
    PRIMARY KEY (topic_id, recipe_id),
    FOREIGN KEY (topic_id) REFERENCES Topic(id) ON DELETE CASCADE,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE Cook (
    id INT,
    name VARCHAR(255) NOT NULL,
    surname VARCHAR(255) NOT NULL,
    phoneNumber VARCHAR(20),
    date_of_birth DATE,
    age INTEGER,
    years_of_experience INTEGER,
    couzine_specialization VARCHAR(255),
    vocational_training_degree VARCHAR(255)
);

CREATE TABLE Cook_Recipe (
    cook_id INT,
    recipe_id INT,
    grade VARCHAR(20),
    PRIMARY KEY (cook_id, recipe_id),
    FOREIGN KEY (cook_id) REFERENCES Cook(id) ON DELETE CASCADE,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id) ON DELETE CASCADE
);

CREATE TABLE Episode (
    id INT,
    couisine(), -- random result generators
    cook(),
    judje(),
    recipe(),
);