import "dart:core";

void main() {
  // Create a new list of strings.
  final List<String> randomSlice = <String>["Bob", "Alice", "Joe"];
  // Add a new element to the slice.
  print(addElementToSlice(randomSlice, "Bill"));
}

// Add an element to the slice and return the slice.
List<dynamic> addElementToSlice(
  final List<dynamic> slice,
  final dynamic element,
) {
  slice.add(element);
  return slice;
}
