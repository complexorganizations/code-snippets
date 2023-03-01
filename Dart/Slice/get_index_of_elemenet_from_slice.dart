import "dart:core";

void main() {
  // Create a new list of strings.
  final List<String> randomSlice = <String>["Bob", "Alice", "Joe"];
  // Get the index of a given element.
  print(getIndexOfElementFromSlice(randomSlice, "Alice"));
}

// Get the index of a given element from a slice.
int getIndexOfElementFromSlice(
  final List<dynamic> slice,
  final dynamic element,
) {
  return slice.indexOf(element);
}
