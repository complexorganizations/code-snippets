// Create a function main that takes no arguments and prints "Hello World".
function main() {
    console.log("Hello World")
    // Call the function functionImput with the argument "Hello World"
    functionImput("Hello, World!")
    // Call the function functionReturn with the argument "Hello World"
    console.log(functionReturn("Hello, World!"))
    // Call the function addNumbers with the arguments 2 and 3
    console.log(addNumbers(2, 3))
    // Call the function subtractNumbers with the arguments 2 and 3
    console.log(subtractNumbers(10, 2))
}

// Run the function main.
main()

// Create a function that takes an argument and prints it.
function functionImput(content) {
    console.log(content)
}

// Create a function that takes an argument and returns it.
function functionReturn(content) {
    return content
}

// Create a function that takes two arguments and returns the sum of them.
function addNumbers(firstNumber, secondNumber) {
    return firstNumber + secondNumber
}

// Create a function that takes two arguments and returns the difference of them.
function subtractNumbers(firstNumber, secondNumber) {
    return firstNumber - secondNumber
}
