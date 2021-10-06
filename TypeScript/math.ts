function main() {
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

// Add two numbers and return the result
function add(firstNumber: number, secondNumber: number) {
    return firstNumber + secondNumber
}

// Subtract two numbers and return the result
function subtract(firstNumber: number, secondNumber: number) {
    return firstNumber - secondNumber
}

// Multiply two numbers and return the result
function multiply(firstNumber: number, secondNumber: number) {
    return firstNumber * secondNumber
}

// Divide two numbers and return the result
function divide(firstNumber: number, secondNumber: number) {
    return firstNumber / secondNumber
}

// Modulo two numbers and return the result
function modulo(firstNumber: number, secondNumber: number) {
    return firstNumber % secondNumber
}

// Return the square root of a number
function squareRoot(firstValue: number) {
    return Math.sqrt(firstValue)
}

// Return the cube root of a number
function cubeRoot(firstValue: number) {
    return Math.cbrt(firstValue)
}

// Return the nth root of a number
function nthRoot(firstValue: number, n: number) {
    return Math.pow(firstValue, 1 / n)
}

// Return the factorial of a number
function factorial(firstValue: number) {
    let result = 1
    for (let i = 1; i <= firstValue; i++) {
        result = result * i
    }
    return result
}

// Return the absolute value of a number
function absoluteValue(firstValue: number) {
    return Math.abs(firstValue)
}

// Return the sine of an angle
function sine(angle: number) {
    return Math.sin(angle)
}

// Return the cosine of an angle
function cosine(angle: number) {
    return Math.cos(angle)
}

// Return the tangent of an angle
function tangent(angle: number) {
    return Math.tan(angle)
}

// Return the arcsine of a number
function arcsine(firstValue: number) {
    return Math.asin(firstValue)
}

// Return the arccosine of a number
function arccosine(firstValue: number) {
    return Math.acos(firstValue)
}

// Return the arctangent of a number
function arctangent(firstValue: number) {
    return Math.atan(firstValue)
}
