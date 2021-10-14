import "dart:math";

void main() {
  // Random number between two numbers
  print(getRandInt(1, 100));
  // Generate a random string
  print(getRandomString(10));
}

// Get a random number between a given range.
int getRandInt(final int min, final int max) {
  final dynamic random = Random.secure();
  return random.nextInt(max - min);
}

// Generate a random string of a given length.
String getRandomString(final int length) {
  const String characterList =
      "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
  final StringBuffer buffer = StringBuffer();
  for (int i = 0; i < length; i++) {
    buffer.write(characterList[Random.secure().nextInt(characterList.length)]);
  }
  return buffer.toString();
}
