import "dart:core";
import "dart:math";

void main() {
  // Create of list of numbers.
  final List<int> randomSlice = <int>[0, 1, 2, 3];
  // Find the smallest number in the given slice.
  print(getSmallestNumberInSlice(randomSlice));
}

// Get the smallest number in a given slice.
int getSmallestNumberInSlice(final List<int> givenSlice) {
  return givenSlice.reduce(min);
}
