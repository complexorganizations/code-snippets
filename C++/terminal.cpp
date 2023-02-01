#include <iostream>

// Clear the terminal screen
void clearTerminal() {
    printf("\033c");
}

// Take input from the user
int getUserInput() {
    int userInput;
    printf("Enter an integer:");
    scanf("%d", &userInput);
    return userInput;
}

int main() {
    // Clear the terminal
    clearTerminal();
    // Take input from the user
    //int userInput = getUserInput();
    //printf(userInput);
    return 0;
}
