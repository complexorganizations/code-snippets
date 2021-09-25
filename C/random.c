#include <stdio.h>
#include <stdlib.h>

// Generate a random number between x and y
int randomNumberInRange(int x, int y) {
    return rand() % (y - x + 1) + x;
}

// Generate a random string of a given length


int main() {
    // Random number between two values
    printf("%d", randomNumberInRange(2, 5));
    return 0;
}
