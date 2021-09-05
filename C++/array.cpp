#include <iostream>

int main() {
    int numbers[5] = {7, 5, 6, 12, 35};
    printf("The numbers are:");

    for (const int &n : numbers) {
        printf("%d", n);
    }
    printf("\nThe numbers are:");

    for (int i = 0; i < 5; ++i) {
        printf("%d", numbers[i]);
    }
    return 0;
}
