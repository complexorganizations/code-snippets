#include <stdio.h>

int main() {
    // if-statement
    if_statement();
    // if-else-statement
    if_else_statement();
    // if-else-if-statement
    if_else_if_statement();
    return 0;
}

// A simple if statement
void if_statement() {
    int a = 1;
    if (a == 1) {
        printf("a is 1\n");
    }
}

// A simple if statement with an else
void if_statement_else() {
    int a = 1;
    if (a == 1) {
        printf("a is 1\n");
    } else {
        printf("a is not 1\n");
    }
}

// A simple if statement with an else if
void if_statement_else_if() {
    int a = 1;
    if (a == 1) {
        printf("a is 1\n");
    } else if (a == 2) {
        printf("a is 2\n");
    } else {
        printf("a is not 1 or 2\n");
    }
}
