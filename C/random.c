#include <stdio.h>
#include <stdlib.h>

int main() {
    printf("%d", randomNumberInRange(2, 5));
}

// Generate a random number between x and y
int randomNumberInRange(int x, int y) {
    return rand() % (y - x + 1) + x;
}
