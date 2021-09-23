function main() {
    // Variable
    createVariable();
    // Map variable
    createMapVariable();
    // Integer variable
    createIntegerVariable();
    // Boolean variable
    createBooleanVariable();
    // Array variable
    createArrayVariable();
    // Null variable
    createNullVariable();
    // Undefined variable
    createUndefinedVariable();
    // Symbol variable
    createSymbolVariable();
}

main()

// Create a simple variable
function createVariable() {
    // Variable declaration
    var x;
    // Variable initialization
    x = 10;
    // Variable reassignment
    x = 20;
    // Variable destruction
    var y = x;
    x = 30;
    console.log(x);
    console.log(y);
}


// Create a map variable
function createMapVariable() {
    var x = {
        name: "John",
        age: 30
    };
    console.log(x);
}

// Create a interger variable
function createIntegerVariable() {
    var x = 10;
    console.log(x);
}


// Create a boolean variable
function createBooleanVariable() {
    var x = true;
    console.log(x);
    var y = false;
    console.log(y);
}


// Create an array variable
function createArrayVariable() {
    var x = [10, 20, 30];
    console.log(x);
}

// Create a null variable
function createNullVariable() {
    var x = null;
    console.log(x);
}

// Create a undefined variable
function createUndefinedVariable() {
    var x;
    console.log(x);
}

// Create a symbol variable
function createSymbolVariable() {
    var x = Symbol();
    console.log(x);
}
