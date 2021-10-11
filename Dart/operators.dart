void main() {
  // Check two statements are equal.
  print(twoStatementEqual("Apple", "Apple"));
  // Check two statements are not equal.
  print(twoStatementNotEqual("Apple", "Banana"));
  // Check if the first value is greater than the second value.
  print(firstGreaterThanSecond(10, 5));
  // Check if the first value is less than the second value.
  print(firstLessThanSecond(5, 10));
  // Check if the first value is greater than or equal to the second value.
  print(firstGreaterThanOrEqualToSecond(10, 5));
  // Check if the first value is less than or equal to the second value.
  print(firstLessThanOrEqualToSecond(5, 10));
}

// Check if two statements are true.
bool twoStatementEqual(final String primary, final String secondary) {
  return primary == secondary;
}

// Check if two statements are not equal
bool twoStatementNotEqual(final String primary, final String secondary) {
  return primary != secondary;
}

// Check if the first value is greater than the second value.
bool firstGreaterThanSecond(final int primary, final int secondary) {
  return primary > secondary;
}

// Check if the first value is less than the second value.
bool firstLessThanSecond(final int primary, final int secondary) {
  return primary < secondary;
}

// Check if the first value is greater than or equal to the second value.
bool firstGreaterThanOrEqualToSecond(final int primary, final int secondary) {
  return primary >= secondary;
}

// Check if the first value is less than or equal to the second value.
bool firstLessThanOrEqualToSecond(final int primary, final int secondary) {
  return primary <= secondary;
}
