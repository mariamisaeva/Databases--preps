-- All the vegetarian recipes with potatoes
-- All the cakes that do not need baking
-- All the vegan and Japanese recipes


SELECT * FROM Recipe 
INNER JOIN Recipe_Ingredient RI ON Recipe.recipe_id = RI.recipe_id
INNER JOIN Ingredient ON RI.ingredient_id = Ingredient.ingredient_id
INNER JOIN Category ON Recipe.recipe_id = Category.category_id
WHERE Category.category_name = 'Vegetarian' AND Ingredient.ingredient_name = 'potatoes';


-- Recipe ->  Recipe_Category -> Category
-- Recipe Name/info ? Where Category is 'No-Bake'
SELECT * FROM Recipe -- want all info from Recipe Table
INNER JOIN Recipe_Category R_C -- id is equal in Recipe + R_C
ON  Recipe.recipe_id = R_C.recipe_id
INNER JOIN Category  -- id of category in R_C + Category table are = 
ON   R_C.category_id = Category.category_id
WHERE Category.category_name = 'No-Bake';


SELECT * FROM Recipe
JOIN Recipe_Category 
ON Recipe.recipe_id = Recipe_Category.recipe_id
JOIN Category  
ON Category.category_id = Recipe_Category.category_id
WHERE Category.category_name = 'Vegetarian' OR Category.category_name = 'Japanese'; 
