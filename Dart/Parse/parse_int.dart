import "dart:core";

void main() {
  // Parse a int.
  print(parseIntFromVariable("123"));
}

// Parse the int and return it
int parseIntFromVariable(final dynamic content) {
  return int.parse(content);
}
