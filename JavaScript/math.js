function main() {
    // Do any math that you want
    /*
    console.log(basicMath(1, "+", 2))
    console.log(basicMath(6, "*", 6))
    console.log(basicMath(6, "/", 6))
    console.log(basicMath(6, "-", 6))
    */
    // Add two numbers and return the result
    console.log(add(1, 2))
    // Subtract two numbers and return the result
    console.log(subtract(1, 2))
    // Multiply two numbers and return the result
    console.log(multiply(1, 2))
    // Divide two numbers and return the result
    console.log(divide(1, 2))
    // Modulo two numbers and return the result
    console.log(modulo(1, 2))
    // Return the square root of a number
    console.log(squareRoot(1))
    // Return the cube root of a number
    console.log(cubeRoot(1))
    // Return the nth root of a number
    console.log(nthRoot(1, 2))
    // Return the factorial of a number
    console.log(factorial(1))
    // Return the absolute value of a number
    console.log(absoluteValue(1))
    // Return the sine of an angle
    console.log(sine(1))
    // Return the cosine of an angle
    console.log(cosine(1))
    // Return the tangent of an angle
    console.log(tangent(1))
    // Return the arcsine of a number
    console.log(arcsine(1))
    // Return the arccosine of a number
    console.log(arccosine(1))
    // Return the arctangent of a number
    console.log(arctangent(1))
}

main()

// Do any math that you want
/*
function basicMath(firstNumber,operation, secondNumber) {
    return eval(firstNumber + operation + secondNumber)
}
*/

// Add two numbers and return the result
function add(firstNumber, secondNumber) {
    return firstNumber + secondNumber
}

// Subtract two numbers and return the result
function subtract(firstNumber, secondNumber) {
    return firstNumber - secondNumber
}

// Multiply two numbers and return the result
function multiply(firstNumber, secondNumber) {
    return firstNumber * secondNumber
}

// Divide two numbers and return the result
function divide(firstNumber, secondNumber) {
    return firstNumber / secondNumber
}

// Modulo two numbers and return the result
function modulo(firstNumber, secondNumber) {
    return firstNumber % secondNumber
}

// Return the square root of a number
function squareRoot(number) {
    return Math.sqrt(number)
}

// Return the cube root of a number
function cubeRoot(number) {
    return Math.cbrt(number)
}

// Return the nth root of a number
function nthRoot(number, n) {
    return Math.pow(number, 1 / n)
}

// Return the factorial of a number
function factorial(number) {
    let result = 1
    for (let i = 1; i <= number; i++) {
        result *= i
    }
    return result
}

// Return the absolute value of a number
function absoluteValue(number) {
    return Math.abs(number)
}

// Return the sine of an angle
function sine(angle) {
    return Math.sin(angle)
}

// Return the cosine of an angle
function cosine(angle) {
    return Math.cos(angle)
}

// Return the tangent of an angle
function tangent(angle) {
    return Math.tan(angle)
}

// Return the arcsine of a number
function arcsine(number) {
    return Math.asin(number)
}

// Return the arccosine of a number
function arccosine(number) {
    return Math.acos(number)
}

// Return the arctangent of a number
function arctangent(number) {
    return Math.atan(number)
}
