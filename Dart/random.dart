import "dart:core";
import "dart:math";

void main() {
  // Random number between two numbers
  print(randomIntBetweenNumbers(1, 100));
  // Generate a random string of a given length.
  print(generateRandomString(10));
  // Get a random int between 0 and a given number.
  print(randomIntBetweenZeroAndNumber(10));
  // Generate a random boolean value.
  print(generateRandomBoolean());
  // Generate a random double.
  print(generateRandomDouble());
}

// Get a random number between a given range.
int randomIntBetweenNumbers(final int min, final int max) {
  return Random.secure().nextInt(max - min) + min;
}

// Generate a random string of a given length.
String generateRandomString(final int length) {
  const String characterList =
      "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
  final StringBuffer buffer = StringBuffer();
  for (int i = 0; i < length; i++) {
    buffer.write(characterList[Random.secure().nextInt(characterList.length)]);
  }
  return buffer.toString();
}

// Get a random int between 0 and a given number.
int randomIntBetweenZeroAndNumber(final int max) {
  return Random.secure().nextInt(max);
}

// Generate a random boolean value.
bool generateRandomBoolean() {
  return Random.secure().nextBool();
}

// Generate a random double
double generateRandomDouble() {
  return Random.secure().nextDouble();
}
