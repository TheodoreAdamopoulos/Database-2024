CREATE TABLE Cuisine (
    id SERIAL PRIMARY KEY,
    nationality VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Recipe (
    id SERIAL PRIMARY KEY,
    difficulty INT CHECK (difficulty >= 1 AND difficulty <= 5),
    cuisine_id INT,
    FOREIGN KEY (cuisine_id) REFERENCES Cuisine(id) ON DELETE CASCADE
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

