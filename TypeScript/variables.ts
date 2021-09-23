function main() {
    // Variable
    createVariable();
}

main()

// Create a simple variable
function createVariable() {
    // Variable declaration
    var x;
    // Variable initialization
    x = 10;
    console.log(x);
    // Variable reassignment
    x = 20;
    console.log(x);
    // Variable destruction
    var y = x;
    x = 30;
    console.log(x);
    console.log(y);
}
