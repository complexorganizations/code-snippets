#include <stdio.h>

int main() {
    equalsOperator();
    return 0;
}

// Example of a == operator
void equalsOperator() {
    // == Operator checks if the values of two operands are equal.
    int a = 1;
    int b = 1;
    if (a == b) {
        printf("%d %d", a, b);
    }
}