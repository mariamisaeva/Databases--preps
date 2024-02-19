CREATE TABLE Recipe (
    recipe_id INT PRIMARY KEY,
    name VARCHAR(100),
    category_id INT
);

CREATE TABLE Category (
    category_id INT PRIMARY KEY,
    name VARCHAR(30)
);

INSERT INTO Category VALUES
(1, 'Dessert'),
(2, 'Main Course'),
(3, 'Dinner');

INSERT INTO Recipe (recipe_id, name, category_id) VALUES
(1, 'Chocolate Cake', 1),
(2, 'Chicken Parmesan', 2);


CREATE TABLE  Ingredient (
    ingredient_id INT PRIMARY KEY,
    name VARCHAR(100)
);

--add data
INSERT INTO Ingredient (name) VALUES ('Flour'),('Sugar'),('Eggs'),('Butter') ;

CREATE TABLE Step (
    step_id INT PRIMARY KEY,
    instruction TEXT
);

CREATE TABLE Recipe_Ingredient (
    recipe_id INT,
    ingredient_id INT,
    quantity VARCHAR(50),
    unit  VARCHAR(10),
    FOREIGN KEY (recipe_id) REFERENCES Recipe(recipe_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

CREATE TABLE Recipe_step (
    recipe_id INT,
    step_id INT,
    step_order INT,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(recipe_id),
    FOREIGN KEY (step_id) REFERENCES Step(step_id)
);







