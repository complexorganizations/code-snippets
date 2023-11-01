import "dart:core";

void main() {
  // Trim a string prefix
  print(trimStringPrefix("Hello, World!"));
}

// Trim a string given prefix
String trimStringPrefix(final String content) {
  return content.trimLeft();
}
