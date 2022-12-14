import "dart:core";
import "dart:math";

void main() {
  // Generate a random integer between 100 and 110
  print(randomIntBetweenMinAndMax(100, 110));
}

// Generate a random int between two given numbers.
int randomIntBetweenMinAndMax(final int min, final int max) {
  return Random.secure().nextInt(max - min) + min;
}
