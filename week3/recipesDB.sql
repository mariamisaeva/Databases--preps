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
CREATE TABLE IF NOT EXISTS Recipe_Category (
    recipe_id INT,
    category_id INT,
    FOREIGN KEY (recipe_id) REFERENCES Recipe (recipe_id),
    FOREIGN KEY (category_id) REFERENCES Category (category_id),
    UNIQUE KEY (recipe_id, category_id)
);

CREATE TABLE IF NOT EXISTS Recipe_Ingredient (
    recipe_id INT,
    ingredient_id INT,
    --  quantity DECIMAL(10,2),
    --   unit  VARCHAR(10),
    --  PRIMARY KEY (recipe_id, ingredient_id),
    FOREIGN KEY (recipe_id) REFERENCES Recipe (recipe_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient (ingredient_id),
    UNIQUE KEY (recipe_id, ingredient_id)
);

CREATE TABLE IF NOT EXISTS Recipe_step (
    recipe_id INT,
    step_order INT,
    step_id INT,
    PRIMARY KEY (recipe_id, step_id),
    FOREIGN KEY (recipe_id) REFERENCES Recipe (recipe_id),
    FOREIGN KEY (step_id) REFERENCES Step (step_id)
);

-- recipe_id | step_order | step_id
-- 1         | 1          | 1
-- 1         | 2          | 2
-- 1         | 3          | 20
-- 1         | 4          | 4
-- 2         | 1          | 15
-- 2         | 2          | 16
-- 2         | 3          | 27
-- 2         | 4          | 8
-- 7         | 1          | 9
-- 7         | 2          | 10