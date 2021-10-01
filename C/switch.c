#include <stdio.h>
#include <string.h>

// A simple integer switch statement
void integerSwitch() {
    int age = 25;
    switch (age) {
        case 25:
            printf("25\n");
            break;
        case 26:
            printf("26\n");
            break;
        case 27:
            printf("27\n");
            break;
        default:
            printf("default\n");
    }
}

// A simple string switch statement
void stringSwitch() {
    const name = "John";
    switch (name) {
        case 'John':
            printf("John\n");
            break;
        case 'Jane':
            printf("Jane\n");
            break;
        case 'Joe':
            printf("Joe\n");
            break;
        default:
            printf("default\n");
    }
}

int main() {
    // A simple switch statement with ints
    integerSwitch();
    // A simple switch statement with strings
    stringSwitch();
    return 0;
}
