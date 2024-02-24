CREATE DATABASE IF NOT EXISTS recipesDB;
USE recipesDB;

-- ALTER TABLE Recipe_Category DROP FOREIGN KEY recipe_category_ibfk_1;

-- DROP TABLE IF EXISTS Recipe, Category, Ingredient, Step, Recipe_Category, Recipe_Ingredient, Recipe_Step;

-- CREATE TABLES

CREATE TABLE IF NOT EXISTS Recipe (
    recipe_id INT AUTO_INCREMENT PRIMARY KEY,
    recipe_name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Category (
     category_id INT AUTO_INCREMENT PRIMARY KEY,
     category_name VARCHAR(100) NOT NULL DEFAULT 'Other' UNIQUE
);


CREATE TABLE IF NOT EXISTS Ingredient (
    ingredient_id INT AUTO_INCREMENT PRIMARY KEY,
    ingredient_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Step (
    step_id INT AUTO_INCREMENT PRIMARY KEY,
    instruction TEXT NOT NULL 
);

-- many to many tables (CONNECT TABLES)

CREATE  TABLE IF NOT EXISTS Recipe_Category (
    recipe_id INT,
    category_id INT,

    FOREIGN KEY (recipe_id) REFERENCES Recipe(recipe_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    UNIQUE KEY (recipe_id, category_id)
);

CREATE TABLE IF NOT EXISTS Recipe_Ingredient (
    recipe_id INT,
    ingredient_id INT,
  --  quantity DECIMAL(10,2),
 --   unit  VARCHAR(10),

  --  PRIMARY KEY (recipe_id, ingredient_id),
    FOREIGN KEY (recipe_id) REFERENCES Recipe(recipe_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id),
    UNIQUE KEY (recipe_id, ingredient_id)
);


CREATE TABLE IF NOT EXISTS Recipe_step (
    recipe_id INT,
    step_id INT AUTO_INCREMENT PRIMARY KEY,
    step_order INT,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(recipe_id),
    FOREIGN KEY (step_id) REFERENCES Step(step_id)
);



-- Delete Duplications from tables

-- DELETE r1 FROM Recipe r1 INNER JOIN Recipe r2 ON r1.recipe_name = r2.recipe_name AND r1.recipe_id > r2.recipe_id;

-- DELETE r1 FROM Step r1 INNER JOIN Step r2 ON r1.instruction = r2.instruction AND r1.step_id > r2.step_id;