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

int main() {
    // Random number between two values
    printf("%d \n", randomNumberInRange(2, 5));
    // Random number
    printf("%d \n", randomNumber());
    return 0;
}
