#include <iostream>

// Generate a random number, between min and max.
int randomNumberBetweenMinMax(int min, int max) {
    srand(time(NULL));
    return rand() % (max - min) + min;
}

int main() {
    // Generate a random number between min and max
    printf("%d \n", randomNumberBetweenMinMax(1, 10));
    return 0;
}
