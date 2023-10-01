import "dart:core";

void main() {
  // Parse a douuble from a variable
  print(parseDoubleFromContent("12.3"));
}

// Parse a double from a variable.
double parseDoubleFromContent(final dynamic content) {
  return double.parse(content);
}
