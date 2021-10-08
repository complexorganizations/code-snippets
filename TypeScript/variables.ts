function main(): void {
    // A simple example of a string
    string_example()
    // A simple example of a string array
    string_array_example()
    // A simple example of a number
    number_example()
    // A simple example of a number array
    number_array_example()
    // A simple example of a bool
    boolean_example()
    // A simple example of a bool array
    boolean_array_example()
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
    // A simple example of a undefined variable array
    undefined_array_example()
    // A simple example of a null variable
    null_example()
    // A simple example of a null variable array
    null_array_example()
    // A simple example of a symbol variable
    symbol_example()
}

main()

// A simple example of a string
function string_example(): void {
    var first_name: string = "John"
    console.log(first_name)
    var last_name: string = "Doe"
    console.log(last_name)
}

// A simple example of a string array
function string_array_example(): void {
    var names: string[] = ["John", "Doe"]
    console.log(names)
}

// A simple example of a number
function number_example(): void {
    var age: number = 30
    console.log(age)
    var height: number = 1.8
    console.log(height)
}

// A simple example of a number array
function number_array_example(): void {
    var ages: number[] = [30, 1.8]
    console.log(ages)
}

// A simple example of a boolean
function boolean_example(): void {
    var is_married: boolean = false
    console.log(is_married)
    var is_male: boolean = true
    console.log(is_male)
}

// A simple example of a boolean array
function boolean_array_example(): void {
    var is_married: boolean[] = [true, false]
    console.log(is_married)
}

// A simple example of a map
function map_example(): void {
    var generated_map: Map<any, any> = new Map()
    generated_map.set("firstName", "John")
    generated_map.set("lastName", "Doe")
    console.log(generated_map)
}

// A simple example of a constant
function constant_example(): void {
    const pi: number = 3.14
    console.log(pi)
    const weight: number = 100.50
    console.log(weight)
}

// A simple example of declaring and assigning a variable
function declare_and_assign_variable(): void {
    var name: string
    name = "John"
    console.log(name)
    var age: number
    age = 30
    console.log(age)
}

// A simple example of the let keyword
function let_example(): void {
    let name: string = "John"
    console.log(name)
    let age: number = 30
    console.log(age)
}

// A simple example of a undefined variable
function undefined_example(): void {
    var name: undefined
    console.log(name)
    var age: undefined
    console.log(age)
}

// A simple example of a undefined variable array
function undefined_array_example(): void {
    var names: undefined[] = [undefined, undefined]
    console.log(names)
}

// A simple example of a null variable
function null_example(): void {
    var name: null = null
    console.log(name)
    var age: null = null
    console.log(age)
}

// A simple example of a null variable array
function null_array_example(): void {
    var names: null[] = [null, null]
    console.log(names)
}

// A simple example of a symbol variable
function symbol_example(): void {
    var name: symbol = Symbol("John Doe")
    console.log(name)
    var age: symbol = Symbol("30")
    console.log(age)
}
