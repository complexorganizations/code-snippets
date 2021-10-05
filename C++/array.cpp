#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// Get the length of the array
int getArrayLength(int array[]) {
    int i = 0;
    while (array[i] != 0) {
        i++;
    }
    return i;
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
        sum += array[i];
    }
    return sum;
}

// Get the average of all elements in the array
float averageOfArrayElements(int array[], int size) {
    float sum = 0;
    for (int i = 0; i < size; i++) {
        sum += array[i];
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

int main() {
    // Create an array of integers
    int randomArray[5] = {19, 10, 8, 17, 9};
    // Get the length of the array
    int lengthOfArray = getArrayLength(randomArray);
    printf("%d\n", lengthOfArray);
    // Get a random value from the array
    int randomItem = randomElement(randomArray, 5);
    printf("%d\n", randomItem);
    // Get the first element of the array
    int firstValue = firstElement(randomArray, 5);
    printf("%d\n", firstValue);
    // Get the last element of the array
    int lastValue = lastElement(randomArray, 5);
    printf("%d\n", lastValue);
    // Get cetain element of the array
    int valueAtIndex = elementAtIndex(randomArray, 5, 2);
    printf("%d\n", valueAtIndex);
    // Get the sum of all elements in the array
    int sumOfArray = sumOfArrayElements(randomArray, 5);
    printf("%d\n", sumOfArray);
    // Get the average of all elements in the array
    float averageOfArray = averageOfArrayElements(randomArray, 5);
    printf("%f\n", averageOfArray);
    // Get the minimum value in the array
    int minimumValue = minimumValueInArray(randomArray, 5);
    printf("%d\n", minimumValue);
    // Get the maximum value in the array
    int maximumValue = maximumValueInArray(randomArray, 5);
    printf("%d\n", maximumValue);
    // Remove all the values from the array
    clearArray(randomArray, 5);
    // Check if the array is empty
    bool emptyArrayCheck = isArrayEmpty(randomArray, 5);
    printf("%d\n", emptyArrayCheck);
    // Check if the array contains any duplicate values
    bool duplicateCheck = containsDuplicates(randomArray, 5);
    printf("%d\n", duplicateCheck);
    // Remove all duplicate values from the array
    removeDuplicates(randomArray, 5);
    return 0;
}
