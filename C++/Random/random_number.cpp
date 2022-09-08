#include <iostream>

// Generate a random number.
int generateRandomNumber() {
    srand(time(NULL));
    return rand();
}

int main() {
    // Generate a random number.
    printf("%d \n", generateRandomNumber());
    return 0;
}
