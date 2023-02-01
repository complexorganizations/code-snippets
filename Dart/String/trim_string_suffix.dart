import "dart:core";

void main() {
  // Trim a string suffix
  print(trimStringSuffix("Hello, World!"));
}

// Trim a string given suffix
String trimStringSuffix(final String content) {
  return content.trimRight();
}
