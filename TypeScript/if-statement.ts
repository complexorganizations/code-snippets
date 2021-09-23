function main() {
    // If statement
    if_statement();
    // If else statement
    if_else_statement();
    // If else if statement
    if_else_if_statement();
}

main()

// A simple if statement
function if_statement() {
    let x = 1;
    if (x === 1) {
        console.log("x is 1");
    }
}

// A simple if else statement
function if_else_statement() {
    let x = 1;
    if (x === 1) {
        console.log("x is 1");
    } else {
        console.log("x is not 1");
    }
}

// A simple if else if statement
function if_else_if_statement() {
    let x = 1;
    if (x === 1) {
        console.log("x is 1");
    } else if (x === 2) {
        console.log("x is 2");
    } else {
        console.log("x is not 1 or 2");
    }
}
