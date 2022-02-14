import "dart:core";
import "dart:math";

void main() {
  // Generate a random string of a given length
  print(generateRandomStringSpecified(10));
}

// Generate a random string of a given length
String generateRandomStringSpecified(final int length) {
  const String characterList =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~!@#\$%^&*()-_+={}][|\\`,./?;:'\"<>";
  final StringBuffer buffer = StringBuffer();
  for (int i = 0; i < length; i++) {
    buffer.write(characterList[Random.secure().nextInt(characterList.length)]);
  }
  return buffer.toString();
}
