import "dart:core";

void main() {
  // Check two statements are equal
  print(twoStatementEqual("Hello", "Hello"));
}

// Check if two statements are equal.
bool twoStatementEqual(final String primary, final String secondary) {
  return primary == secondary;
}
