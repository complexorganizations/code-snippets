#include <iostream>

// Check if the primary is more than the secondary value.
bool primaryMoreThanSecondary(int primary, int secondary) {
    return primary > secondary;
}

int main() {
    // Check if the primary value is less than the secondary value.
    printf("%d \n", primaryMoreThanSecondary(25, 10));
    return 0;
}