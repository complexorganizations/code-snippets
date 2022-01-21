import "dart:core";

void main() {
  // Create two slices with random data.
  final List<String> sliceOne = <String>["Bob", "Alice", "Joe"];
  final List<String> sliceTwo = <String>[];
  // Copy all the elements from a primary slice to a secondary slice.
  print(copyElementsFromPrimaryToSecondarySlice(sliceOne, sliceTwo));
}

// All of the items from a primary slice should be copied to a secondary slice.
List<dynamic> copyElementsFromPrimaryToSecondarySlice(
  final List<dynamic> primarySlice,
  List<dynamic> secondarySlice,
) {
  secondarySlice = [...primarySlice];
  return secondarySlice;
}
