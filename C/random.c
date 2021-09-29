#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Generate a random number between x and y
int randomNumberInRange(int x, int y) {
    srand(time(0));
    return rand() % (y - x + 1) + x;
}

// Generate a random number
int randomNumber() {
    srand(time(0));
    return rand();
}

// Generate a random boolean
bool randomBoolean() {
    srand(time(0));
    return rand() % 2 == 0;
}

int main() {
    // Random number between two values
    printf("%d \n", randomNumberInRange(2, 5));
    // Random number
    printf("%d \n", randomNumber());
    // Random boolean
    printf("%d \n", randomBoolean());
    return 0;
}
