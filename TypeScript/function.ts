function main() {
    // No Argument no return
    simple_function();
    // One Argument no return
    function_with_argument("Hello World");
    // Two Argument no return
    function_with_two_arguments("Hello", "World");
    // No Argument return
    console.log(return_value());
    // No Argument return
    console.log(return_two_values());
    // One Argument return
    console.log(function_with_argument_and_return("Hello World"));
    // Two Argument return
    console.log(function_with_two_arguments_and_return("Hello", "World"));
}

main()

// Function that takes no arguments and returns nothing
function simple_function() {
    console.log("Hello World");
}

// Function that takes one argument and returns nothing
function function_with_argument(argument) {
    console.log(argument);
}

// Function that takes two arguments and returns nothing
function function_with_two_arguments(argument1, argument2) {
    console.log(argument1, argument2);
}

// Function that takes no arguments and returns a value
function return_value() {
    return "Hello World";
}

// Function that takes no arguments and returns two values
function return_two_values() {
    return ["Hello", "World"];
}

// Function that takes a single argument and returns a value
function function_with_argument_and_return(argument) {
    return argument;
}

// Function that takes two arguments and returns two values
function function_with_two_arguments_and_return(argument1, argument2) {
    return [argument1, argument2];
}
