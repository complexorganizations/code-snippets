import "dart:core";

void main() {
  // Create a new list of strings.
  final List<String> randomSlice = <String>["Bob", "Alice", "Joe"];
  // Check if the slice is empty.
  print(isSliceEmpty(randomSlice));
}

// Check if a given slice is empty and return a boolean value.
bool isSliceEmpty(final List<dynamic> slice) {
  return slice.isEmpty;
}