#include <cstdbool>
#include <cstdlib>
#include <iostream>

// Get the length of the array
int getArrayLength(int array[]) {
    int counter = 0;
    while (array[counter] != 0) {
        counter = counter + 1;
    }
    return counter;
}

// Take in a input as an array and return a random element from the array
int randomElement(int array[], int size) {
    int randomIndex = rand() % size;
    return array[randomIndex];
}

// Get the first element of the array
int firstElement(int array[], int size) {
    return array[0];
}

// Get the last element of the array
int lastElement(int array[], int size) {
    return array[size - 1];
}

// Get the value at the specified index
int elementAtIndex(int array[], int size, int index) {
    return array[index];
}

// Get the sum of all elements in the array
int sumOfArrayElements(int array[], int size) {
    int sum = 0;
    for (int i = 0; i < size; i++) {
        sum = sum + array[i];
    }
    return sum;
}

// Get the average of all elements in the array
float averageOfArrayElements(int array[], int size) {
    float sum = 0;
    for (int i = 0; i < size; i++) {
        sum = sum + array[i];
    }
    return sum / size;
}

// Get the minimum value in the array
int minimumValueInArray(int array[], int size) {
    int min = array[0];
    for (int i = 0; i < size; i++) {
        if (array[i] < min) {
            min = array[i];
        }
    }
    return min;
}

// Get the maximum value in the array
int maximumValueInArray(int array[], int size) {
    int max = array[0];
    for (int i = 0; i < size; i++) {
        if (array[i] > max) {
            max = array[i];
        }
    }
    return max;
}

// Remove all elements from the array
void clearArray(int array[], int size) {
    for (int i = 0; i < size; i++) {
        array[i] = 0;
    }
}

// Check if the array is empty
bool isArrayEmpty(int array[], int size) {
    for (int i = 0; i < size; i++) {
        if (array[i] != 0) {
            return false;
        }
    }
    return true;
}

// Check if the array contains any duplicate values
bool containsDuplicates(int array[], int size) {
    for (int i = 0; i < size; i++) {
        for (int j = i + 1; j < size; j++) {
            if (array[i] == array[j]) {
                return true;
            }
        }
    }
    return false;
}

// Remove all duplicate values from the array
void removeDuplicates(int array[], int size) {
    for (int i = 0; i < size; i++) {
        for (int j = i + 1; j < size; j++) {
            if (array[i] == array[j]) {
                array[j] = 0;
            }
        }
    }
}

// Reverse an array
void reverseArray(int array[], int size) {
    int temp;
    for (int i = 0; i < size / 2; i++) {
        temp = array[i];
        array[i] = array[size - i - 1];
        array[size - i - 1] = temp;
    }
}

// Sort an array
void sortArray(int array[], int size) {
    int temp;
    for (int i = 0; i < size; i++) {
        for (int j = i + 1; j < size; j++) {
            if (array[i] > array[j]) {
                temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
        }
    }
}

int main() {
    // Create an array of integers
    int randomArray[5] = {19, 10, 8, 17, 9};
    // Get the length of the array
    printf("%d\n", getArrayLength(randomArray));
    // Get a random value from the array
    printf("%d\n", randomElement(randomArray, 5));
    // Get the first element of the array
    printf("%d\n", firstElement(randomArray, 5));
    // Get the last element of the array
    printf("%d\n", lastElement(randomArray, 5));
    // Get cetain element of the array
    printf("%d\n", elementAtIndex(randomArray, 5, 2));
    // Get the sum of all elements in the array
    printf("%d\n", sumOfArrayElements(randomArray, 5));
    // Get the average of all elements in the array
    printf("%f\n", averageOfArrayElements(randomArray, 5));
    // Get the minimum value in the array
    printf("%d\n", minimumValueInArray(randomArray, 5));
    // Get the maximum value in the array
    printf("%d\n", maximumValueInArray(randomArray, 5));
    // Check if the array is empty
    printf("%d\n", isArrayEmpty(randomArray, 5));
    // Check if the array contains any duplicate values
    printf("%d\n", containsDuplicates(randomArray, 5));
    // Remove all duplicate values from the array
    removeDuplicates(randomArray, 5);
    // Reverse an array
    reverseArray(randomArray, 5);
    // Sort an array
    sortArray(randomArray, 5);
    // Remove all the values from the array
    clearArray(randomArray, 5);
    return 0;
}
