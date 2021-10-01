void main() {
  // && operator is used to check if multiple value is true or false.
  bothStatementSame();
  // || operator is used to check if any value is true or false.
  bothStatementNotSame();
  // ! operator is used to reverse the value.
  notStatement();
  //
  notStatementNotSame();
  //
  notStatementSame();
}

// && operator is used to check if multiple value is true or false.
void bothStatementSame() {
  var firstName = "John";
  var lastName = "Doe";
  if (firstName == "John" && lastName == "Doe") {
    print("Hello ${firstName} ${lastName}");
  }
}

// || operator is used to check if one of the value is true or false.
void bothStatementNotSame() {
  var firstName = "John";
  var lastName = "Doe";
  if (firstName != "John" && lastName != "Doe") {
    print("Hello ${firstName} ${lastName}");
  }
}

// ! operator is used to reverse the value.
void notStatement() {
  var firstName = "John";
  if (firstName != "John") {
    print("Hello ${firstName}");
  }
}

void notStatementNotSame() {
  var firstName = "John";
  var lastName = "Doe";
  if (firstName == "John" && lastName != "Doe") {
    print("Hello ${firstName} ${lastName}");
  }
}

void notStatementSame() {
  var firstName = "John";
  var lastName = "Doe";
  if (!(firstName == "John" && lastName == "Doe")) {
    print("Hello ${firstName} ${lastName}");
  }
}
