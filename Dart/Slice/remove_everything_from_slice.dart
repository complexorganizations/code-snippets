import "dart:core";

void main() {
  // Create a new list of strings.
  final List<String> randomSlice = <String>["Bob", "Alice", "Joe"];
  // Remove everything from the slice.
  print(removeEverythingFromSlice(randomSlice));
}

// Remove everything from a given slice.
List<dynamic> removeEverythingFromSlice(final List<dynamic> slice) {
  slice.clear();
  return slice;
}
