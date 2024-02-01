import "dart:core";

void main() {
  // Check two statements are equal
  print(twoStatementNotEqual("Hello", "Hello"));
}

// Check if two statements are not equal
bool twoStatementNotEqual(final String primary, final String secondary) {
  return primary != secondary;
}
