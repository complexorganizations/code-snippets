import "dart:core";
import "dart:math";

void main() {
  // Create of list of numbers.
  final List<int> randomSlice = <int>[1, 2, 3];
  // Find the biggest number in the given slice.
  print(getBiggestNumberInSlice(randomSlice));
}

// Get the biggest number in a given slice.
int getBiggestNumberInSlice(final List<int> givenSlice) {
  return givenSlice.reduce(max);
}
