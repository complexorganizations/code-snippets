void main() {
  simpleSwitch("+");
  // more example
  moreExample();
}

void simpleSwitch(String operator) {
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

void moreExample() {
  var restValue = 1;
  switch (restValue) {
    case 1:
      print(1);
      break;
    case 2:
      print(2);
      break;
    default:
      print("other");
  }
}
