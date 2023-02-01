import "dart:core";

void main() {
  // Create a new list of strings.
  final List<String> randomSlice = <String>["Bob", "Alice", "Joe"];
  // Sort the slice.
  print(sortASlice(randomSlice));
}

// Sort a slice and return the sorted slice.
List<dynamic> sortASlice(final List<dynamic> slice) {
  slice.sort();
  return slice;
}
