import "dart:core";

void main() {
  print(reverseAString("Hello, World!"));
}

// Reverse a given string.
String reverseAString(final String givenString) {
  return givenString.split("").reversed.join();
}
