#include <iostream>

// Single return value
int singleReturn(int x) {
    return 5 + x;
}

// Multiple return values
int multiReturn(int x, int y) {
    return x + y;
}

int main() {
    printf("%d\n", singleReturn(1));
    printf("%d\n", multiReturn(1, 4));
    return 0;
}