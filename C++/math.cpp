#include <iostream>

// Take in two numbers and return the sum
int add_numbers(int a, int b) {
    return a + b;
}

// Take in two numbers and return the difference
int subtract_numbers(int a, int b) {
    return a - b;
}

// Take in two numbers and return the product
int multiply_numbers(int a, int b) {
    return a * b;
}

// Take in two numbers and devide them.
int divide_numbers(int a, int b) {
    return a / b;
}

int main() {
    // Add two numbers
    printf("%d\n", add_numbers(0, 1));
    // Subtract two numbers
    printf("%d\n", subtract_numbers(3, 1));
    // Multiply two numbers
    printf("%d\n", multiply_numbers(1, 3));
    // Devide two numbers
    printf("%d\n", divide_numbers(12, 3));
    return 0;
}
