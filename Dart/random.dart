import "dart:convert";
import "dart:math";

void main() {
  // Random string of a given length
  final int characterLimit = 100;
  print(getRandString(characterLimit));
  print(getRandString(100));
  // Random number between two numbers
  print(getRandInt(1, 100));
}

// Get a random string of a given length.
String getRandString(final int len) {
  final random = Random.secure();
  final values = List<int>.generate(len, (final i) => random.nextInt(255));
  return base64UrlEncode(values);
}

// Get a random number between a given range.
int getRandInt(final int min, final int max) {
  final random = Random.secure();
  return random.nextInt(max - min) + min;
}
