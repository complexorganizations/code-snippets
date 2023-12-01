import "dart:core";

void main() {
  const String operator = "+";
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
