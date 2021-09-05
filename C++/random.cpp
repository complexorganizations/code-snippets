#include <iostream>

int main() {
    printf("%d", random(2, 5));
}

// Generate a random number between x and y
int random(int x, int y) {
    return rand() % (y - x + 1) + x;
}