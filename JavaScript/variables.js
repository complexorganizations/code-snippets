function main() {
    int()
    string()
    boolean()
    float()
    letVariable()
    constantVariable()
    assign()
}

main()

// int
function int() {
    var a = 1
    var b = 2
    console.log(a + b)
}

// String
function string() {
    var a = "hello"
    var b = "world"
    console.log(a + b)
}

// Boolean
function boolean() {
    var a = true
    console.log(a)
    var b = false
    console.log(b)
}

// Float
function float() {
    var a = 1.1
    var b = 2.2
    console.log(a + b)
}

// Let for function scope
function letVariable() {
    let a = "apple"
    let b = "bees"
    console.log(a, b)
}

// Const for constant
function constantVariable() {
    const a = "A"
    console.log(a)
}

// Assign variable
function assign() {
    var a
    a = 2
    console.log(a)
}
