#include <iostream>

// Simple function takes no arguments and returns nothing
void no_return_no_arguments() {
    printf("No arguments and returns nothing.\n");
}

// Simple function that takes an integer argument and returns nothing
void no_return_one_argument(int first_value) {
    printf("%d", first_value);
}

// Simple function that takes in two integers and returns nothing
void no_return_two_arguments(int first_value, int second_value) {
    printf("%d %d", first_value, second_value);
}

// Simple function that takes in an integer and returns an integer
int one_return_one_argument(int first_value) {
    return first_value;
}

// Simple function that takes in two integers and returns an integer
int one_return_two_arguments(int first_value, int second_value) {
    return first_value + second_value;
}

// A simple efirst_valueample of goto in C
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
    printf("%d\n", one_return_one_argument(1));
    // Two arguments and one return value
    printf("%d\n", one_return_two_arguments(1, 2));
    // Simple goto
    simple_goto();
    return 0;
}
