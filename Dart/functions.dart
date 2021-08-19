void main() {
  foo(1);
  bar("This is a random string that we will print.");
  testCondition(true);
  add(2, 3);
  multiply(4, 5);
  print(test());
  print(tools("This is a random string"));
}

// Variable inside a string
void foo(int randomNumber) {
  print("The random number is ${randomNumber}");
}

// Passing a variable to a function
void bar(String randomString) {
  print(randomString);
}

// if condition test
void testCondition(bool condition) {
  if (condition) {
    print("This is true");
  } else {
    print("This is false");
  }
}

// Add two numbers
void add(int firstNumber, int secondNumber) {
  print(firstNumber + secondNumber);
}

// Mulitply two numbers
void multiply(int firstNumber, int secondNumber) {
  print(firstNumber * secondNumber);
}

// Return a string
String test() {
  return "Hello, World!";
}

// Return a string
String tools(String message) {
  return message;
}
