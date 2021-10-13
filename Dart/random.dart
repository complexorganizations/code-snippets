import "dart:math";

void main() {
  // Random number between two numbers
  print(getRandInt(1, 100));
}

// Get a random number between a given range.
int getRandInt(final int min, final int max) {
  final dynamic random = Random.secure();
  return random.nextInt(max - min);
}
