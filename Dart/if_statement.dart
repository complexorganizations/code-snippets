void main() {
  int age;
  age = 42;

  if (age == 42) {
    print(age);
  } else {
    print("age is not ${age}");
  }

  if (age > 18) {
    print("You are old enough to vote!");
  } else {
    print("You are not old enough to vote.");
  }

  // if statment inside a function
  print(exampleIFStatement(0));

  // another if statement inside a function
  print(anotherIfStatement(1));

  // function to loop over a range of numbers and than print certain numbers.
  loop();

  // bool to check if the user is verifed.
  const isVerified = true;
  if (isVerified) {
    print("User is verified");
  }

  // Range of numbers
  checkRange();

  // another methord
  testFunction();

  // More
  const int apple = 1;
  const int banana = 1;
  print(apple == banana);
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

// Loop
void loop() {
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      print(i);
    }
  }
}

// Loop over a range.
void checkRange() {
  final randomList = {
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

  for (final number in randomList) {
    if (number == "five") {
      print(number);
    }
  }

  var numberList;
  numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (final number in numberList) {
    if (number == 5) {
      print(number);
    }
  }
}

void testFunction() {
  // if statement inside of a for block.
  for (int month = 1; month <= 12; month++) {
    // Print out all the monthes.
    print(month);
    // If statemenet inside of a loop.
    if (month == 5) {
      print("The month is five.");
    }
  }
}