import "dart:core";
import "dart:math";

void main() {
  // Get the power of two given numbers.
  print(getPowerOfTwoNumbers(3, 10));
}

// Get the power of two given numbers.
num getPowerOfTwoNumbers(final int number, final int power) {
  return pow(number, power);
}
