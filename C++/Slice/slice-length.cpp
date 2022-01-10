#include <iostream>

// Get the length of a given slice.
int getSliceLength(int slice[]) {
    return sizeof(slice);
}

int main() {
    // Create a simple slice.
    int userGenArray[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    // Print the length of the slice.
    std::cout << "The length of the slice is: " << getSliceLength(userGenArray) << std::endl;
    return 0;
}