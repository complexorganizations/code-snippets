import "dart:core";

void main() {
  // Create a new list of strings.
  final List<String> randomSlice = <String>["Bob", "Alice", "Joe"];
  // Check if the slice contains specific values.
  print(sliceCointains(randomSlice, "Joe"));
}

// Check if a given slice contains a given value and return a boolean
bool sliceCointains(final List<dynamic> slice, final dynamic element) {
  return slice.contains(element);
}
