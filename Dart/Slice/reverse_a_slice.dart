import "dart:core";

void main() {
  // Create a new list of strings.
  final List<String> randomSlice = <String>["Bob", "Alice", "Joe"];
  // Reverse a slice.
  print(reverseASlice(randomSlice));
}

// Reverse a given slice and return the result.
List<dynamic> reverseASlice(final List<dynamic> slice) {
  return slice.reversed.toList();
}
