import "dart:convert";
import "dart:core";

void main() {
  // Convert string into a bytes.
  print(convertStringToBytes("Hello, World!"));
 
}

// Convert string into bytes and return the bytes.
List<int> convertStringToBytes(final String givenString) {
  return utf8.encode(givenString);
}
