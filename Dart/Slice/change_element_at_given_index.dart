import "dart:core";

void main() {
  // Create a new list of strings.
  final List<String> randomSlice = <String>["Bob", "Alice", "Joe"];
  // At a particular index, change the value of an element.
  print(changeElementAtGivenIndex(randomSlice, 0, "John"));
}

// At a particular index, change the value of an element.
List<dynamic> changeElementAtGivenIndex(final List<dynamic> providedSlice, final int providedIndex, final String providedElement) {
  providedSlice[providedIndex] = providedElement;
  return providedSlice;
}
