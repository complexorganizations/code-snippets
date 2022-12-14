#include <iostream>

// Create a boolean value at random.
bool generateRandomBoolean() {
    srand(time(NULL));
    return rand() % 2 == 0;
}

int main() {
    // Generate a random boolean.
    printf("%d \n", generateRandomBoolean());
    return 0;
}
