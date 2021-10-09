function main(): void {
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
function constantString(): string {
    const currentString: string = "Hello"
    return currentString
}

// Constant number
function constantNumber(): number {
    const currentNumber: number = 10
    return currentNumber
}

// Constant boolean
function constantBoolean(): boolean {
    const currentBoolean: boolean = true
    return currentBoolean
}

// Constant array
function constantArray(): number[] {
    const currentArray: number[] = [1, 2, 3]
    return currentArray
}

// Constant object
function constantObject(): object {
    const currentObject: object = {
        name: "John",
        age: 30
    }
    return currentObject
}

// Constant function
function constantFunction(): Function {
    const currentFunction: Function = function (): string {
        return "Hello"
    }
    return currentFunction
}

// Constant symbol
function constantSymbol(): symbol {
    const currentSymbol: symbol = Symbol("Hello")
    return currentSymbol
}

// Constant null
function constantNull(): null {
    const currentNull: null = null
    return currentNull
}

// Constant undefined
function constantUndefined(): undefined {
    const currentUndefined: undefined = undefined
    return currentUndefined
}
