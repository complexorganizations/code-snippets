import "dart:core";

void main() {
  // Create a new list of strings.
  final List<String> randomSlice = <String>["Bob", "Alice", "Joe"];
  // Remove the element at a given index.
  print(removeElementAtIndex(randomSlice, 2));
}

// Remove a element at the given index from the slice.
List<dynamic> removeElementAtIndex(final List<dynamic> slice, final int index) {
  slice.removeAt(index);
  return slice;
}
