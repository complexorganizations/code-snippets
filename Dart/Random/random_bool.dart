import "dart:math";

void main() {
  // Generate a random bool
  print(generateRandomBoolean());
}

// Generate a random boolean value.
bool generateRandomBoolean() {
  return Random.secure().nextBool();
}
