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

// Remove all the duplicates values from an array
void removeDuplicatesFromArray(int array[]) {
    int counter = 0;
    while (array[counter] != 0) {
        int counter2 = counter + 1;
        while (array[counter2] != 0) {
            if (array[counter] == array[counter2]) {
                array[counter2] = 0;
            }
            counter2 = counter2 + 1;
        }
        counter = counter + 1;
    }
}

// Check if the array is sorted.
bool isArraySorted(int array[]) {
    int counter = 0;
    while (array[counter] != 0) {
        int counter2 = counter + 1;
        while (array[counter2] != 0) {
            if (array[counter] > array[counter2]) {
                return false;
            }
            counter2 = counter2 + 1;
        }
        counter = counter + 1;
    }
    return true;
}

// Sort an array in ascending order.
void sortArrayInAscendingOrder(int array[]) {
    int counter = 0;
    while (array[counter] != 0) {
        int counter2 = counter + 1;
        while (array[counter2] != 0) {
            if (array[counter] > array[counter2]) {
                int temp = array[counter];
                array[counter] = array[counter2];
                array[counter2] = temp;
            }
            counter2 = counter2 + 1;
        }
        counter = counter + 1;
    }
}

// Print all the values in an array.
void printAllElmentsInArray(int array[]) {
    int counter = 0;
    while (array[counter] != 0) {
        printf("%d ", array[counter]);
        counter = counter + 1;
    }
}

// Get an random element from the array
int getRandomElementFromArray(int array[]) {
    return elementAtIndexInArray(array, rand() % getArrayLength(array));
}

// Get the largest value in the array.
int getLargestValueInArray(int array[]) {
    int counter = 0;
    int largestValue = array[0];
    while (array[counter] != 0) {
        if (array[counter] > largestValue) {
            largestValue = array[counter];
        }
        counter = counter + 1;
    }
    return largestValue;
}

// Get the smallest value in the array
int getSmallestValueInArray(int array[]) {
    int counter = 0;
    int smallestValue = array[0];
    while (array[counter] != 0) {
        if (array[counter] < smallestValue) {
            smallestValue = array[counter];
        }
        counter = counter + 1;
    }
    return smallestValue;
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
    // Remove all the duplicates values from an array
    removeDuplicatesFromArray(userGenArray);
    // Check if the array is sorted.
    printf("Is the array sorted? %d\n", isArraySorted(userGenArray));
    // Sort an array in ascending order.
    sortArrayInAscendingOrder(userGenArray);
    // Print all the values in an array.
    printAllElmentsInArray(userGenArray);
    // Get an random element from the array
    printf("\nRandom Element: %d\n", getRandomElementFromArray(userGenArray));
    // Get the largest value in the array.
    printf("Largest Value: %d\n", getLargestValueInArray(userGenArray));
    // Get the smallest value in the array
    printf("Smallest Value: %d\n", getSmallestValueInArray(userGenArray));
    // Remove all the values from an array.
    removeAllValuesFromArray(userGenArray);
    // Return 0 to the operating system.
    return 0;
}
