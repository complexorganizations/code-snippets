void main() {
  // Check two statements are equal.
  print(checkTwoStatementEqual("Apple", "Apple"));
  // Check two statements are not equal.
  print(checkTwoStatementNotEqual("Apple", "Banana"));
}

// Check if two statements are true.
bool checkTwoStatementEqual(String first_statement, String second_statement) {
  return first_statement == second_statement;
}

// Check if two statements are not equal
bool checkTwoStatementNotEqual(String first_statement, String second_statement) {
  return first_statement != second_statement;
}
