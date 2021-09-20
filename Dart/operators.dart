void main() {
  var fistName = "John";
  var lastName = "Doe";
  // && operator is used to check if multiple value is true or false.
  if (fistName == "John" && lastName == "Doe") {
    print("Hello ${fistName} ${lastName}");
  }
  // || operator is used to check if one of the value is true or false.
  if (fistName == "Jane" || lastName == "Doe") {
    print("Hello ${fistName} ${lastName}");
  }
  // ! operator is used to reverse the value.
  if (fistName != "John") {
    print("${fistName}");
  }
  if (!(fistName == "John" && lastName == "Doe")) {
    print("Hello ${fistName} ${lastName}");
  }
}
