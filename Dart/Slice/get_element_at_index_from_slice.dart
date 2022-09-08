import "dart:core";

void main() {
  // Create a new list of strings.
  final List<String> randomSlice = <String>["Bob", "Alice", "Joe"];
  // Get the element at the index 2.
  print(getElementAtIndexFromSlice(randomSlice, 2));
}

// Get a element at a given index in a slice.
dynamic getElementAtIndexFromSlice(
  final List<dynamic> slice,
  final int index,
) {
  return slice[index];
}
