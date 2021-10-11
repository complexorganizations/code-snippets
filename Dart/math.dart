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
