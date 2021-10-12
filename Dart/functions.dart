void main() {
  foo(1);
  bar("This is a random string that we will print.");
  testCondition(true);
  add(2, 3);
  multiply(4, 5);
  print(test());
  print(tools("This is a random string"));
  print(exampleIFStatement(1));
  print(anotherIfStatement(0));
  print(returnMultipleValues());
  print(returnFloat());
  optionalInput();
  optionalInput("Hello");
}

// Variable inside a string
void foo(final int randomNumber) {
  print("The random number is ${randomNumber}");
}

// Passing a variable to a function
void bar(final String randomString) {
  print(randomString);
}

// if condition test
void testCondition(final bool condition) {
  if (condition) {
    print("This is true");
  } else {
    print("This is false");
  }
}

// Add two numbers
void add(final int firstNumber, final int secondNumber) {
  print(firstNumber + secondNumber);
}

// Mulitply two numbers
void multiply(final int firstNumber, final int secondNumber) {
  print(firstNumber * secondNumber);
}

// Return a string
String test() {
  return "Hello, World!";
}

// Return a string
String tools(final String message) {
  return message;
}

// Return a bool
bool exampleIFStatement(final int number) {
  return number == 0;
}

// if statement for bool
bool anotherIfStatement(final int number) {
  if (number == 0) {
    return true;
  } else {
    return false;
  }
}

// Return multiple values
List<dynamic> returnMultipleValues() {
  return <dynamic>[42, "foo", "bar", 1.5, true];
}

// return a float
double returnFloat() {
  return 42.5;
}

// Optional Input
void optionalInput([final String? message]) {
  if (message == "Hello") {
    print("World");
  } else if (message == null) {
    print(null);
  }
}
