#include <stdio.h>
#include <stdlib.h>

int main() {
    // Create an array of integers
    int randomArray[5] = {19, 10, 8, 17, 9};
    // Get a random value from the array
    int randomItem = randomElement(randomArray, 5);
    // Print the random value
    printf("The random value is %d\n", randomItem);
    return 0;
}

// Take in a input as an array and return a random element from the array
int randomElement(int array[], int size) {
    int randomIndex = rand() % size;
    return array[randomIndex];
}
