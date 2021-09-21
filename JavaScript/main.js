function main() {
    // Do any math that you want
    console.log(doSomeMath(1, "+", 2))
    console.log(doSomeMath(6, "*", 6))
    console.log(doSomeMath(6, "/", 6))
    console.log(doSomeMath(6, "-", 6))
}

main()

// Do any math that you want
function doSomeMath(firstNumber,operation, secondNumber) {
    return eval(firstNumber + operation + secondNumber)
}
