void main() {
  // Do basic math operations.
  var a = 1;
  var b = 2;
  print(basicMath(a, b, "+"));
}

// Do basic math inside a function.
int basicMath(int a, int b, String operation) {
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
