import "dart:core";

void main() {
  // Create a new list of strings.
  final List<String> randomSlice = <String>["Bob", "Alice", "Joe"];
  // Shuffle the slice.
  print(shuffleASlice(randomSlice));
}

// Shuffle a given slice and return the result.
List<dynamic> shuffleASlice(final List<dynamic> slice) {
  slice.shuffle();
  return slice;
}
