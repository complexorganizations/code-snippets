#include <stdio.h>
#include <stdlib.h>

int main() {
    // Create an array of integers
    int randomArray[5] = {19, 10, 8, 17, 9};
    // Get the length of the array
    int lengthOfArray = getArrayLength(randomArray);
    printf("%d\n", lengthOfArray);
    // Get a random value from the array
    int randomItem = randomElement(randomArray, 5);
    printf("%d\n", randomItem);
    // Remove all the values from the array
    clearArray(randomArray, 5);
    return 0;
}

// Take in a input as an array and return a random element from the array
int randomElement(int array[], int size) {
    int randomIndex = rand() % size;
    return array[randomIndex];
}

// Get the length of the array
int getArrayLength(int array[]) {
    int arrSize = sizeof(array) / sizeof(array[0]);
    return arrSize;
}

// Remove all elements from the array
void clearArray(int array[], int size) {
    for (int i = 0; i < size; i++) {
        array[i] = 0;
    }
}
