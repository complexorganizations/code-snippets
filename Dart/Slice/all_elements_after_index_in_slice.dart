import "dart:core";

void main() {
  // Create a new list of strings.
  final List<String> randomSlice = <String>["Bob", "Alice", "Joe"];
  // Get all the element after the given index.
  print(getAllElementsAfter(randomSlice, 0));
}

// Get all the element after a given index in a slice.
List<dynamic> getAllElementsAfter(final List<dynamic> slice, final int index) {
  return slice.sublist(index + 1);
}
