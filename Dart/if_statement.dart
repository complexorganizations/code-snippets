import "dart:core";

void main() {
  // A simple if statement
  simpleIfStatement();
  // If statement with assert
  simpleIfStatementWithAssert();
  // A simple if else statement
  simpleIfElseStatement();
  // A simple if elseif else statement
  simpleIfElseIfElseStatement();
  // A simple if statement inside a range
  simpleIfStatementInRange();
  // A simple if statement inside a range with a condition
  sipleIfStatmentInsideFunction("Apple");
  // Return a bool on a condition based on the answer provided.
  print(isAnswerCorrect("Yes"));
}

// A simple if statement
void simpleIfStatement() {
  const int firstValue = 10;
  const int secondValue = 20;
  if (firstValue == secondValue) {
    print("They are both the same value.");
  }
}

// If statement with assert
void simpleIfStatementWithAssert() {
  const int firstValue = 20;
  const int secondValue = 20;
  // Assert is used to check if the condition is true or false.
  assert(firstValue != secondValue, "Both values not are the same.");
}

// A simple if else statement
void simpleIfElseStatement() {
  const int firstValue = 10;
  const int secondValue = 20;
  if (firstValue == secondValue) {
    print("They are both the same value.");
  } else {
    print("They are not the same value.");
  }
}

// A simple if elseif else statement
void simpleIfElseIfElseStatement() {
  const int firstValue = 10;
  const int secondValue = 20;
  if (firstValue == secondValue) {
    print("They are both the same value.");
  } else if (firstValue > secondValue) {
    print("The first value is greater than the second value.");
  } else {
    print("The second value is greater than the first value.");
  }
}

// A simple if statement inside a range
void simpleIfStatementInRange() {
  final Set<String> randomList = <String>{
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten"
  };
  for (final String number in randomList) {
    if (number == "five") {
      print(number);
    }
  }
}

// A simple if statement inside a function
void sipleIfStatmentInsideFunction(final String value) {
  if (value == "Apple") {
    print("The value is Apple.");
  } else {
    print("The value is unknown.");
  }
}

// Return a bool on a condition based on the answer provided.
bool isAnswerCorrect(final String answer) {
  if (answer == "yes") {
    return true;
  } else {
    return false;
  }
}
