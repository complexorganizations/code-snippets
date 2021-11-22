import "dart:core";

void main() {
  // Create a new list of strings.
  final List<String> randomSlice = <String>["Bob","Bob", "Alice", "Joe"];
  // Remove all duplicate elements from the list.
  print(removeDuplicatesFromSlice(randomSlice));
}

// Remove all the duplicates element from a slice.
List<dynamic> removeDuplicatesFromSlice(final List<dynamic> slice) {
  final List<dynamic> uniqueElements = <dynamic>[];
  for (final dynamic element in slice) {
    if (!uniqueElements.contains(element)) {
      uniqueElements.add(element);
    }
  }
  return uniqueElements;
}
