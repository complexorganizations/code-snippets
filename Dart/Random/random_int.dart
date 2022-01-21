import "dart:core";
import "dart:math";

void main() {
  // Generate a random int between 0 and 100
  print(generateRandomInt(100));
}

// Generate a random int between 0 and a given max value
int generateRandomInt(final int max) {
  return Random.secure().nextInt(max);
}
