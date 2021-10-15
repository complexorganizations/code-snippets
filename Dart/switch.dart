void main() {
  simpleSwitch("+");
  // more example
  moreExample();
  // return example
  print(returnExample(1));
}

void simpleSwitch(final String operator) {
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
  const int restValue = 1;
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

// Return inside a switch statement
int returnExample(final int value) {
  switch (value) {
    case 1:
      return 1;
    case 2:
      return 2;
    default:
      return -1;
  }
}
