void main() {
  // Check two statements are equal.
  print(checkTwoStatementEqual("Apple", "Apple"));
  // Check two statements are not equal.
  print(checkTwoStatementNotEqual("Apple", "Banana"));
  // Check if the first value is greater than the second value.
  print(checkFirstGreaterThanSecond(10, 5));
  // Check if the first value is less than the second value.
  print(checkFirstLessThanSecond(5, 10));
  // Check if the first value is greater than or equal to the second value.
  print(checkFirstGreaterThanOrEqualToSecond(10, 5));
  // Check if the first value is less than or equal to the second value.
  print(checkFirstLessThanOrEqualToSecond(5, 10));
}

// Check if two statements are true.
bool checkTwoStatementEqual(final String firstStatemenet, final String secondStatement) {
  return firstStatemenet == secondStatement;
}

// Check if two statements are not equal
bool checkTwoStatementNotEqual(final String firstStatemenet, final String secondStatement) {
  return firstStatemenet != secondStatement;
}

// Check if the first value is greater than the second value.
bool checkFirstGreaterThanSecond(final int firstValue, final int secondValue) {
  return firstValue > secondValue;
}

// Check if the first value is less than the second value.
bool checkFirstLessThanSecond(final int firstValue, final int secondValue) {
  return firstValue < secondValue;
}

// Check if the first value is greater than or equal to the second value.
bool checkFirstGreaterThanOrEqualToSecond(final int firstValue, final int secondValue) {
  return firstValue >= secondValue;
}

// Check if the first value is less than or equal to the second value.
bool checkFirstLessThanOrEqualToSecond(final int firstValue, final int secondValue) {
  return firstValue <= secondValue;
}
