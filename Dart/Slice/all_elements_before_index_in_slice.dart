import "dart:core";

void main() {
  // Create a new list of strings.
  final List<String> randomSlice = <String>["Bob", "Alice", "Joe"];
  // Get all the elements before the given index.
  print(getAllElementsBeforeIndex(randomSlice, 2));
}

// Get all the elements before a given index in a slice
List<dynamic> getAllElementsBeforeIndex(
  final List<dynamic> slice,
  final int index,
) {
  return slice.sublist(0, index);
}
