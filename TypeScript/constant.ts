function main() {
    // Constant string
    console.log(constantString())
    // Constant number
    console.log(constantNumber())
    // Constant boolean
    console.log(constantBoolean())
    // Constant array
    console.log(constantArray())
    // Constant object
    console.log(constantObject())
    // Constant function
    console.log(constantFunction())
    // Constant symbol
    console.log(constantSymbol())
    // Constant null
    console.log(constantNull())
    // Constant undefined
    console.log(constantUndefined())
}

main()

// Constant string
function constantString() {
    const currentString = "Hello"
    return currentString
}

// Constant number
function constantNumber() {
    const currentNumber = 10
    return currentNumber
}

// Constant boolean
function constantBoolean() {
    const currentBoolean = true
    return currentBoolean
}

// Constant array
function constantArray() {
    const currentArray = [1, 2, 3]
    return currentArray
}

// Constant object
function constantObject() {
    const currentObject = {
        name: "John",
        age: 30
    }
    return currentObject
}

// Constant function
function constantFunction() {
    const currentFunction = function () {
        return "Hello"
    }
    return currentFunction
}

// Constant symbol
function constantSymbol() {
    const currentSymbol = Symbol("Hello")
    return currentSymbol
}

// Constant null
function constantNull() {
    const currentNull = null
    return currentNull
}

// Constant undefined
function constantUndefined() {
    const currentUndefined = undefined
    return currentUndefined
}
constant
