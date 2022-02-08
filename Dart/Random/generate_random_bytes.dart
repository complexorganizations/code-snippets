import "dart:core";
import "dart:convert";
import "dart:math";

void main() {
  // Generate random bytes of given length.
  print(generateRandomBytes(1));
}

// Generate random bytes of given length.
List<int> generateRandomBytes(final int length) {
  const String characterList =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~!@#\$%^&*()-_+={}][|\\`,./?;:'\"<>";
  final StringBuffer buffer = StringBuffer();
  for (int i = 0; i < length; i++) {
    buffer.write(characterList[Random.secure().nextInt(characterList.length)]);
  }
  return utf8.encode(buffer.toString());
}
