import "dart:math";

void main() {
  // Add two numbers
  print(simpleMath(1, "+", 4));
  // Subtract two numbers
  print(simpleMath(3, "-", 10));
  // Multiply two numbers
  print(simpleMath(4, "*", 9));
  // Divide two numbers
  print(simpleMath(4, "/", 7));
  // Modulo two numbers
  print(simpleMath(4, "%", 7));
  // Power of two numbers
  print(simpleMath(2, "^", 3));
  // Square root of a number
  print(getSquareRoot(4));
  // Get the power of a number.
  print(getPower(2.0, 3.0));
  // Get the value of pi
  print(getPi());
}

// Do basic math inside a function.
int simpleMath(final int primary, final String operation, final int secondary) {
  switch (operation) {
    case "+":
      return primary + secondary;
    case "-":
      return primary - secondary;
    case "*":
      return primary * secondary;
    case "%":
      return primary % secondary;
    case "<<":
      return primary << secondary;
    case ">>":
      return primary >> secondary;
    case "&":
      return primary & secondary;
    case "|":
      return primary | secondary;
    case "^":
      return primary ^ secondary;
    case "~":
      return ~primary;
    default:
      return -1;
  }
}

// Get the square root of a number.
double getSquareRoot(final double number) {
  return sqrt(number);
}

// Get the power of a number.
num getPower(final double number, final double power) {
  return pow(number, power);
}

// Get the value of pi.
double getPi() {
  return pi;
}
