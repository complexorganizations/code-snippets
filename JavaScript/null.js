function main() {
    // Create a variable named name and assign it a value of your name.
    var name = "John Doe";
    console.log(name)
    console.log(variableToNull(name))
    // Create a variable named age and assign it a value of your age.
    var age = 25;
    console.log(age)
    console.log(variableToNull(age))
    // Create a bool for married.
    var married = true;
    console.log(married)
    console.log(variableToNull(married))
    // Create an array of your favorite foods.
    var favoriteFoods = ["pizza", "pasta", "salad"]
    console.log(favoriteFoods)
    console.log(variableToNull(favoriteFoods))
    // Create an map of your favorite books.
    var favoriteBooks = {
        "name": "The Hobbit",
        "author": "J.R.R. Tolkien",
        "pages": 300
    }
    console.log(favoriteBooks)
    console.log(variableToNull(favoriteBooks))
}

main()

// Turns a variable into a null.
function variableToNull(content) {
    return content = null
}