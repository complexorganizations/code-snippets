#include <stdio.h>
#include <stdlib.h>

// Generate a random number between x and y
int randomNumberInRange(int x, int y) {
    return rand() % (y - x + 1) + x;
}

// Generate a random number
int randomNumber() {
    return rand();
}

// Generate a random string of a given length
char* randomStringInRange(int length) {
    char* string = malloc(length + 1);
    for (int i = 0; i < length; i++) {
        string[i] = randomNumberInRange(0, 1024);
    }
    string[length] = "\0";
    return string;
}

int main() {
    // Random number between two values
    printf("%d \n", randomNumberInRange(2, 5));
    // Random number
    printf("%d \n", randomNumber());
    // Random string of a given length
    printf("%d \n", randomStringInRange(10));
    return 0;
}
