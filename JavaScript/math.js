function main() {
    // Do any math that you want
    console.log(basicMath(1, "+", 2))
    console.log(basicMath(6, "*", 6))
    console.log(basicMath(6, "/", 6))
    console.log(basicMath(6, "-", 6))
}

main()

// Do any math that you want
function basicMath(firstNumber,operation, secondNumber) {
    return eval(firstNumber + operation + secondNumber)
}
