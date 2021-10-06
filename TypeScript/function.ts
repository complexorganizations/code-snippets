function main() {
    // Call the function functionImput with the argument "Hello World"
    functionImput("Hello, World!")
    // Call the function functionReturn with the argument "Hello World"
    console.log(functionReturn("Hello, World!"))
    // Call the function that does some math and than returns the value.
    console.log(doSomeMath(2, 3))
}

main()

// Create a function that takes an argument and prints it.
function functionImput(content: string) {
    console.log(content)
}

// Create a function that takes an argument and returns it.
function functionReturn(content: string) {
    return content
}

// Create a function that takes two arguments and does some math and than returns
function doSomeMath(firstNumber: number, secondNumber: number) {
    return firstNumber * secondNumber + secondNumber ^ firstNumber % secondNumber
}
