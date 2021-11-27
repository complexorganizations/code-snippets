import "dart:core";

void main() {
  // Split a string by index.
  print(splitStringByIndex("Hello, World!", 5));
}

// Split a string by index.
String splitStringByIndex(final String contnet, final int index) {
  return contnet.substring(0, index);
}
