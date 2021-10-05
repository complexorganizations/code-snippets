function main() {
    // A simple example of a string
    string_example()
    // A simple example of a number
    number_example()
    // A simple example of a bool
    boolean_example()
    // A simple example of a map
    map_example()
    // A simple example of a constant
    constant_example()
    // A simple example of declaring and assigning a variable
    declare_and_assign_variable()
    // A simple example of the let keyword
    let_example()
}

main()

// A simple example of a string
function string_example() {
    var first_name = "John"
    console.log(first_name)
    var last_name = "Doe"
    console.log(last_name)
}

// A simple example of a number
function number_example() {
    var age = 30
    console.log(age)
    var height = 1.8
    console.log(height)
}

// A simple example of a boolean
function boolean_example() {
    var is_married = false
    console.log(is_married)
    var is_male = true
    console.log(is_male)
}

// A simple example of a map
function map_example() {
    var generated_map = new Map()
    generated_map.set("firstName", "John")
    generated_map.set("lastName", "Doe")
    console.log(generated_map)
}

// A simple example of a constant
function constant_example() {
    const PI = 3.14
    console.log(PI)
    const WEIGHT = 100.50
    console.log(WEIGHT)
}

// A simple example of declaring and assigning a variable
function declare_and_assign_variable() {
    var name
    name = "John"
    console.log(name)
    var age
    age = 30
    console.log(age)
}

// A simple example of the let keyword
function let_example() {
    let name = "John"
    console.log(name)
    let age = 30
    console.log(age)
}
