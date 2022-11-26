import "dart:convert";
import "dart:core";

void main() {
  // Convert bytes into a string.
  print(
    convertBytesToString(<int>[
      35,
      32,
      84,
      104,
      105,
      115,
      32,
      105,
      115,
      32,
      97,
      32,
      114,
      97,
      110,
      100,
      111,
      109,
      32,
      118,
      97,
      108,
      105,
      100,
      32,
      102,
      111,
      108,
      100,
      101,
      114,
      46,
      13
    ]),
  );
}

// Convert bytes into string and return the string.
String convertBytesToString(final List<int> givenBytes) {
  return utf8.decode(givenBytes);
}
