import "dart:core";

void main() {
  // Create a new list of strings.
  final List<String> randomSlice = <String>["", "Alice", "Joe"];
  // Remove all of the blank elements from a slice.
  print(removeAllEmptyElementsFromSlice(randomSlice));
}

// Remove every single empty element from a slice.
List<dynamic> removeAllEmptyElementsFromSlice(final List<dynamic> slice) {
  final List<dynamic> result = <dynamic>[];
  for (final dynamic element in slice) {
    if (element.isNotEmpty) {
      result.add(element);
    }
  }
  return result;
} 
