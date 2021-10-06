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
    // A simple example of a undefined variable
    undefined_example()
    // A simple example of a null variable
    null_example()
    // A simple example of a symbol variable
    symbol_example()
}

main()

// A simple example of a string
function string_example() {
    var first_name: string = "John"
    console.log(first_name)
    var last_name: string = "Doe"
    console.log(last_name)
}

// A simple example of a number
function number_example() {
    var age: number = 30
    console.log(age)
    var height: number = 1.8
    console.log(height)
}

// A simple example of a boolean
function boolean_example() {
    var is_married: boolean = false
    console.log(is_married)
    var is_male: boolean = true
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
    const PI: number = 3.14
    console.log(PI)
    const WEIGHT: number = 100.50
    console.log(WEIGHT)
}

// A simple example of declaring and assigning a variable
function declare_and_assign_variable() {
    var name: string
    name = "John"
    console.log(name)
    var age: number
    age = 30
    console.log(age)
}

// A simple example of the let keyword
function let_example() {
    let name: string = "John"
    console.log(name)
    let age: number = 30
    console.log(age)
}

// A simple example of a undefined variable
function undefined_example() {
    var name: undefined
    console.log(name)
    var age: undefined
    console.log(age)
}

// A simple example of a null variable
function null_example() {
    var name: null = null
    console.log(name)
    var age: null = null
    console.log(age)
}

// A simple example of a symbol variable
function symbol_example() {
    var name: symbol = Symbol("John Doe")
    console.log(name)
    var age: symbol = Symbol("30")
    console.log(age)
}
