import "dart:core";

void main() {
  // Create a new list of strings.
  final List<String> randomSlice = <String>["Bob", "Alice", "Joe"];
  // Remove an element from the slice.
  print(removeElementFromSlice(randomSlice, "Joe"));
}

// Remove an element from an slice.
List<dynamic> removeElementFromSlice(
  final List<dynamic> slice,
  final dynamic element,
) {
  slice.remove(element);
  return slice;
}
