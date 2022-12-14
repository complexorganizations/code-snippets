import "dart:core";
import "dart:math";

void main() {
  // Create a new list of numbers.
  final List<int> randomSlice = <int>[0, 9];
  // Get the missing number.
  print(getMissingIntegerInSlice(randomSlice));
}

// Find the missing int in a given slice.
List<int> getMissingIntegerInSlice(final List<int> givenSlice) {
  // Get the smallest and largest numbers in the slice.
  final int smallestInt = getSmallestNumberInSlice(givenSlice);
  final int largestInt = getBiggestNumberInSlice(givenSlice);
  // Create a slice for the missing numbers.
  final List<int> missingNumbers = <int>[];
  // Loop through the slice and add the missing numbers to the slice.
  for (int i = smallestInt; i <= largestInt; i++) {
    if (sliceCointains(givenSlice, i) == false) {
      missingNumbers.add(i);
    }
  }
  return missingNumbers;
}

// Get the smallest number in a given slice.
int getSmallestNumberInSlice(final List<int> givenSlice) {
  return givenSlice.reduce(min);
}

// Get the biggest number in a given slice.
int getBiggestNumberInSlice(final List<int> givenSlice) {
  return givenSlice.reduce(max);
}

// Check if a given slice contains a given value and return a boolean
bool sliceCointains(final List<dynamic> slice, final dynamic element) {
  return slice.contains(element);
}
