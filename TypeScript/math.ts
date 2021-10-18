function main(): void {
    // Add two numbers and return the result
    console.log(addTwoNumbers(1, 2))
    // Subtract two numbers and return the result
    console.log(subtractTwoNumbers(1, 2))
    // Multiply two numbers and return the result
    console.log(multiplyTwoNumbers(1, 2))
    // Divide two numbers and return the result
    console.log(divideTwoNumbers(1, 2))
    // Modulo two numbers and return the result
    console.log(moduloTwoNumbers(1, 2))
    // Return the square root of a number
    console.log(squareRootOfNumber(1))
    // Return the cube root of a number
    console.log(cubeRootOfNumber(64))
    // Return the nth root of a number
    console.log(nthRootOfTwoNumbers(1, 2))
    // Return the factorial of a number
    console.log(factorialOfNumber(32))
    // Return the absolute value of a number
    console.log(absoluteValueOfNumber(16))
    // Return the sine of an angle
    console.log(sineOfNumber(1))
    // Return the cosine of an angle
    console.log(cosineOfNumber(1))
    // Return the tangent of an angle
    console.log(tangentOfNumber(1))
    // Return the arcsine of a number
    console.log(arcsineOfNumber(1))
    // Return the arccosine of a number
    console.log(arccosineOfNumber(1))
    // Return the arctangent of a number
    console.log(arctangentOfNumber(1))
}

main()

// Add two numbers and return the result
function addTwoNumbers(firstNumber: number, secondNumber: number): number {
    return firstNumber + secondNumber
}

// Subtract two numbers and return the result
function subtractTwoNumbers(firstNumber: number, secondNumber: number): number {
    return firstNumber - secondNumber
}

// Multiply two numbers and return the result
function multiplyTwoNumbers(firstNumber: number, secondNumber: number): number {
    return firstNumber * secondNumber
}

// Divide two numbers and return the result
function divideTwoNumbers(firstNumber: number, secondNumber: number): number {
    return firstNumber / secondNumber
}

// Modulo two numbers and return the result
function moduloTwoNumbers(firstNumber: number, secondNumber: number): number {
    return firstNumber % secondNumber
}

// Return the square root of a number
function squareRootOfNumber(firstValue: number): number {
    return Math.sqrt(firstValue)
}

// Return the cube root of a number
function cubeRootOfNumber(firstValue: number): number {
    return Math.cbrt(firstValue)
}

// Return the nth root of a number
function nthRootOfTwoNumbers(firstValue: number, n: number): number {
    return Math.pow(firstValue, 1 / n)
}

// Return the factorial of a number
function factorialOfNumber(firstValue: number): number {
    let result: number = 1
    for (let i: number = 1; i <= firstValue; i++) {
        result = result * i
    }
    return result
}

// Return the absolute value of a number
function absoluteValueOfNumber(firstValue: number): number {
    return Math.abs(firstValue)
}

// Return the sine of an angle
function sineOfNumber(angle: number): number {
    return Math.sin(angle)
}

// Return the cosine of an angle
function cosineOfNumber(angle: number): number {
    return Math.cos(angle)
}

// Return the tangent of an angle
function tangentOfNumber(angle: number): number {
    return Math.tan(angle)
}

// Return the arcsine of a number
function arcsineOfNumber(firstValue: number): number {
    return Math.asin(firstValue)
}

// Return the arccosine of a number
function arccosineOfNumber(firstValue: number): number {
    return Math.acos(firstValue)
}

// Return the arctangent of a number
function arctangentOfNumber(firstValue: number): number {
    return Math.atan(firstValue)
}
