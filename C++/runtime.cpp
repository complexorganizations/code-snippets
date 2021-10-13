#include <iostream>

// Get the current version of the compiler
void currentCPPVersion() {
    switch (__cplusplus) {
        case 199711L:
            printf("C++98\n");
            break;
        case 201103L:
            printf("C++11\n");
            break;
        case 201402L:
            printf("C++14\n");
            break;
        case 201703L:
            printf("C++17\n");
            break;
        case 202002L:
            printf("C++20\n");
            break;
         default:
            printf("Unknown\n");
            break;
    }
}

int main() {
    // Get the current version of the compiler
    currentCPPVersion();
    return 0;
}
