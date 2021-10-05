void main() {
  // Do basic math operations.
  print(basicMath(1, "+", 2));
}

// Do basic math inside a function.
int basicMath(int a, String operation, int b) {
  switch (operation) {
    case "+":
      return a + b;
    case "-":
      return a - b;
    case "*":
      return a * b;
    case "%":
      return a % b;
    case "<<":
      return a << b;
    case ">>":
      return a >> b;
    case "&":
      return a & b;
    case "|":
      return a | b;
    case "^":
      return a ^ b;
    case "~":
      return ~a;
    default:
      return -1;
  }
}
