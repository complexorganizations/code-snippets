import "dart:core";

void main() {
  // Create a new list of strings.
  final List<String> randomSlice = <String>["Bob", "Alice", "Joe"];
  // Get the length of the slice.
  print(getSliceLength(randomSlice));
}

// Get the length of a given slice.
int getSliceLength(final List<dynamic> slice) {
  return slice.length;
}
