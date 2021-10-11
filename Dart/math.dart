void main() {
  // Add two numbers
  print(simpleMath(1, "+", 4));
  // Subtract two numbers
  print(simpleMath(3, "-", 10));
  // Multiply two numbers
  print(simpleMath(4, "*", 9));
  // Divide two numbers
  print(simpleMath(4, "/", 7));
}

// Do basic math inside a function.
int simpleMath(final int firstValue, final String operation, final int secondValue) {
  switch (operation) {
    case "+":
      return firstValue + secondValue;
    case "-":
      return firstValue - secondValue;
    case "*":
      return firstValue * secondValue;
    case "%":
      return firstValue % secondValue;
    case "<<":
      return firstValue << secondValue;
    case ">>":
      return firstValue >> secondValue;
    case "&":
      return firstValue & secondValue;
    case "|":
      return firstValue | secondValue;
    case "^":
      return firstValue ^ secondValue;
    case "~":
      return ~firstValue;
    default:
      return -1;
  }
}
