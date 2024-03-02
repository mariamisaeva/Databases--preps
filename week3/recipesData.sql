-- Insert data into Recipe table 
INSERT INTO Recipe (recipe_name) 
VALUES
('Chocolate Cake'),
('Chicken Parmesan'),
('Tamagoyaki Japanese Omelette'),
('Mac & Cheese'),
('Roasted Brussels Sprouts'),
('No-Bake Cheesecake');


INSERT INTO Category (category_name) 
VALUES
('Dessert'),
('Main Course'),
('Dinner'),
('Cake'),
('No-Bake'),
('Vegetarian'),
('Gluten-Free'), 
('Japanese');


INSERT INTO Ingredient (ingredient_name) 
VALUES 
('Condensed milk'),
('Cream Cheese'),
('Lemon Juice'),
('Pie Crust'),
('Cherry Jam'),
('Brussels Sprouts'),
('Sesame seeds'),
('Pepper'),
('Salt'),
('Olive oil'),
('Macaroni'),
('Butter'),
('Flour'),
('Milk'),
('Shredded Cheddar cheese'),
('Eggs'),
('Soy sauce'),
('Sugar');

INSERT INTO Step (instruction)
VALUES 
('Add condensed Milk and blend'),
('Add Lemon Juice and blend'),
('Add the mix to the pie crust'),
('Add cheddar cheese'),
('Add the macaroni'),
('Add flour, salt, pepper and mix '),
('Add Milk and mix'),
('Add soya sauce, sugar and salt'),
('Add oil to a sauce pan'),
('Add some mix to the sauce pan'),
('Beat Cream Cheese'),
('Bake for 30'),
('Beat the eggs'),
('Bring to medium heat'),
('Cook Macaroni for 8'), 
('Cook until mix is smooth'),
('Let is cook for 1'),
('Mix the ingredients in a bowl'),
('Melt butter in a saucepan'),
('Place in refrigerator for 3h.'),
('Preheat the oven'),
('Remove pan from fire'),
('Spread the Cherry Jam'),
('Spread the mix on baking sheet');

INSERT INTO Recipe_Category (recipe_id, category_id)  VALUES 
(3, 6),(3,8),
(4,6),
(5,6),(5,7),
(6,4),(6,5),(6,6);

INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id)  VALUES 
(1, 1),
(3,16),(3,17),(3,18),(3,9),(3,10),
(6,1),(6,2),(6,3),(6,4),(6,5),
(5,6),(5,3),(5,7),(5,8),(5,9),(5,10),
(4,11),(4,12),(4,13),(4,9),(4,8),(4,14),(4,15);


INSERT INTO Recipe_Step (recipe_id, step_id)  VALUES 
(3,13),(3,8),(3,9),(3,14),(3,10),(3,17),(3,22),
(4,15),(4,19),(4,6),(4,7),(4,16),(4,4),(4,5),
(5,21),(5,18),(5,24),(5,12),
(6,11),(6,1),(6,2),(6,3),(6,23),(6,20);

