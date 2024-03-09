require('dotenv').config();
const { MongoClient } = require('mongodb');
const data = require('./data');


const URI = process.env.DB_URI;

const client = new MongoClient(URI,
    /*  {
          useNewUrlParser: true,
          useUnifiedTopology: true
      }*/
);

const addDataToCollections = async (database) => {
    await database.collection('recipes').insertMany(data.recipesData);
    await database.collection('categories').insertMany(data.categoryData);
    await database.collection('ingredients').insertMany(data.ingredientData);
    await database.collection('steps').insertMany(data.stepsData);

    console.log('Data inserted successfully');


    const recipes = await database.collection('recipes').find({}).toArray();
    const categories = await database.collection('categories').find({}).toArray();
    const ingredients = await database.collection('ingredients').find({}).toArray();
    const steps = await database.collection('steps').find({}).toArray();

    console.log('Recipes: ', recipes);
    //  console.log('Categories: ', categories);
    //  console.log('Ingredients: ', ingredients);
    //  console.log('Steps: ', steps);

};


const main = async () => {
    try {
        await client.connect(); //connect to MongoDB cluster
        console.log('Connected to MongoDB');

        const database = client.db("recipesDB");



        await addDataToCollections(database);


    } catch (e) {
        console.error('ERROR: ', e);

    } finally {
        await client.close();
    }

};

main();
