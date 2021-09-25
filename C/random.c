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

// Generate a random string
char* randomString(int length) {
    char* string = malloc(length + 1);
    for (int i = 0; i < length; i++) {
        string[i] = randomNumberInRange(97, 122);
    }
    string[length] = '\0';
    return string;
}

int main() {
    // Random number between two values
    printf("%d", randomNumberInRange(2, 5));
    // Random number
    printf("%d", randomNumber());
    // Random string
    printf("%s", randomString(10));
    return 0;
}
