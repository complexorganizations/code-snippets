import "dart:core";

void main() {
  // Check if a given string is empty
  print(emptyStringChecker("Hello, World!"));
}

// Check if a given string is empty.
bool emptyStringChecker(final String content) {
  return content.isEmpty;
}
