const recipesData = [
    {
        name: 'No-Bake Cheesecake',
        categories: [4, 5, 6],
        ingredients: [1, 2, 3, 4, 5],
        steps: [11, 1, 2, 3, 23, 24]
    },
    {
        name: 'Roasted Brussels Sprouts',
        categories: [9, 8],
        ingredients: [6, 7, 8, 9, 10, 11],
        steps: [21, 18, 23, 24]
    },
    {
        name: 'Mac & Cheese',
        categories: [6],
        ingredients: [12, 13, 14, 9, 15, 16, 17],
        steps: [16, 20, 6, 7, 18, 4, 5]
    },
    {
        name: 'Tamagoyaki Japanese Omelette',
        categories: [6, 7],
        ingredients: [17, 18, 19, 9, 20],
        steps: [12, 13, 14, 15, 16, 17, 22, 15, 17]
    }
];

const categoryData = [
    { name: 'Dessert' },
    { name: 'Main Course' },
    { name: 'Dinner' },
    { name: 'Cake' },
    { name: 'No-Bake' },
    { name: 'Vegetarian' },
    { name: 'Japanese' },
    { name: 'Gluten-Free' }
];

const ingredientData = [
    { name: 'Condensed milk' },
    { name: 'Cream Cheese' },
    { name: 'Lemon Juice' },
    { name: 'Pie Crust' },
    { name: 'Cherry Jam' },
    { name: 'Brussels Sprouts' },
    { name: 'Sesame seeds' },
    { name: 'Pepper' },
    { name: 'Salt' },
    { name: 'Olive oil' },
    { name: 'Macaroni' },
    { name: 'Butter' },
    { name: 'Flour' },
    { name: 'Milk' },
    { name: 'Shredded Cheddar cheese' },
    { name: 'Eggs' },
    { name: 'Soy sauce' },
    { name: 'Sugar' }
];

const stepsData = [
    { description: 'Add condensed Milk and blend' },
    { description: 'Add Lemon Juice and blend' },
    { description: 'Add the mix to the pie crust' },
    { description: 'Add cheddar cheese' },
    { description: 'Add the macaroni' },
    { description: 'Add flour, salt, pepper and mix' },
    { description: 'Add Milk and mix' },
    { description: 'Add soya sauce, sugar and salt' },
    { description: 'Add oil to a sauce pan' },
    { description: 'Add some mix to the sauce pan' },
    { description: 'Beat Cream Cheese' },
    { description: 'Bake for 30' },
    { description: 'Beat the eggs' },
    { description: 'Bring to medium heat' },
    { description: 'Cook Macaroni for 8' },
    { description: 'Cook until mix is smooth' },
    { description: 'Let it cook for 1' },
    { description: 'Mix the ingredients in a bowl' },
    { description: 'Melt butter in a saucepan' },
    { description: 'Place in refrigerator for 3h.' },
    { description: 'Preheat the oven' },
    { description: 'Remove pan from fire' },
    { description: 'Spread the Cherry Jam' },
    { description: 'Spread the mix on baking sheet' }
]

module.exports = {
    recipesData,
    categoryData,
    ingredientData,
    stepsData
};
