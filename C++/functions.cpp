#include <iostream>

// Simple function takes no arguments and returns nothing
void no_return_no_arguments() {
    printf("No arguments and returns nothing.\n");
}

// Simple function that takes an integer argument and returns nothing
void no_return_one_argument(int x) {
    printf("%d", x);
}

// Simple function that takes in two integers and returns nothing
void no_return_two_arguments(int x, int y) {
    printf("%d %d", x, y);
}

// Simple function that takes in an integer and returns an integer
int one_return_one_argument(int x) {
    return x;
}

// Simple function that takes in two integers and returns an integer
int one_return_two_arguments(int x, int y) {
    return x + y;
}

// Simple function that takes in two integers and returns two integers
int two_return_two_arguments(int x, int y) {
    return x, y;
}

// A simple example of goto in C
void simple_goto() {
    goto simple_block;

simple_block:
    printf("This is a simple go to block.\n");
}

int main() {
    // No arguments and no return value
    no_return_no_arguments();
    // One argument and no return value
    no_return_one_argument(1);
    // Two arguments and no return value
    no_return_two_arguments(1, 2);
    // One argument and one return value
    int the_return_value_of_one_argument = one_return_one_argument(1);
    printf("%d\n", the_return_value_of_one_argument);
    // Two arguments and one return value
    int the_return_value_of_two_arguments = one_return_two_arguments(1, 2);
    printf("%d\n", the_return_value_of_two_arguments);
    // Two arguments and two return values
    int first_return_of_two_returns, second_return_of_two_returns = two_return_two_arguments(1, 2);
    printf("%d %d\n", first_return_of_two_returns, second_return_of_two_returns);
    // Simple goto
    simple_goto();
    return 0;
}
