import "dart:core";

void main() {
  final String operator = "+";
  switch (operator) {
    case "+":
      print("+");
      break;
    case "-":
      print("-");
      break;
    case "/":
      print("/");
      break;
    case "*":
      print("*");
      break;
    default:
      print("invalid operator");
  }
}
