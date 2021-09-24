#include <stdio.h>

int main() {
    int a = 0;
    switch (a) {
        case 0:
            printf("0");
            break;
        case 1:
            printf("1");
            break;
        case 2:
            printf("2");
            break;
        default:
            printf("default");
    }
    return 0;
}
