#include <iostream>

// Get the length of an array.
int getArrayLength(int array[]) {
    int counter = 0;
    while (array[counter] != 0) {
        counter = counter + 1;
    }
    return counter;
}

// Get the first element of the array
int firstElementInArray(int array[]) {
    return array[0];
}

// Get the last element of the array
int getLastElementInArray(int array[]) {
    return array[getArrayLength(array) - 1];
}

// Get the certain element at a certain index in an array
int elementAtIndexInArray(int array[], int index) {
    return array[index];
}

// Check if the array is empty and return a bool
bool isArrayEmpty(int array[]) {
    if (getArrayLength(array) == 0) {
        return true;
    } else {
        return false;
    }
}

// Check if the array isnt empty and return a bool
bool isArrayNotEmpty(int array[]) {
    if (getArrayLength(array) != 0) {
        return true;
    } else {
        return false;
    }
}

// Check if the array contains any duplicates values.
bool arrayContainsDuplicates(int array[]) {
    int counter = 0;
    while (array[counter] != 0) {
        int counter2 = counter + 1;
        while (array[counter2] != 0) {
            if (array[counter] == array[counter2]) {
                return true;
            }
            counter2 = counter2 + 1;
        }
        counter = counter + 1;
    }
    return false;
}

// Print all the values in an array.
void printAllElmentsInArray(int array[]) {
    int counter = 0;
    while (array[counter] != 0) {
        printf("%d ", array[counter]);
        counter = counter + 1;
    }
}

// Remove all the values from an array.
void removeAllValuesFromArray(int array[]) {
    int counter = 0;
    while (array[counter] != 0) {
        array[counter] = 0;
        counter = counter + 1;
    }
}

// The main function
int main() {
    // Create an array.
    int userGenArray[] = {9, 5, 3, 4, 10, 8, 1, 6, 2, 7, 7};
    // Get the length of the array.
    printf("Array Length: %d\n", getArrayLength(userGenArray));
    // Get the first element of the array
    printf("First Element: %d\n", firstElementInArray(userGenArray));
    // Get the last element of the array
    printf("Last Element: %d\n", getLastElementInArray(userGenArray));
    // Get the certain element at a certain index in an array
    printf("Element at index 3: %d\n", elementAtIndexInArray(userGenArray, 3));
    // Check if the array is empty and return a bool
    printf("Is the array empty? %d\n", isArrayEmpty(userGenArray));
    // Check if the array isnt empty and return a bool
    printf("Is the array not empty? %d\n", isArrayNotEmpty(userGenArray));
    // Check if the array contains any duplicates values.
    printf("Does the array contain duplicates? %d\n", arrayContainsDuplicates(userGenArray));
    // Print all the values in an array.
    printAllElmentsInArray(userGenArray);
    // Remove all the values from an array.
    removeAllValuesFromArray(userGenArray);
    // Return 0 to the operating system.
    return 0;
}
