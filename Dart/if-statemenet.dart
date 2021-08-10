void main() {
  // Declare all the variables
  var name = "John Doe";
  var age = 30;
  var year = 1977;
  var is_verified = true;
  var friends = ["Jane Doe", "John Smith"];

  // Print the variables
  print(name);

  // if statment
  if (is_verified) {
    print("Verified user");
  }

  if (age >= 18) {
    print("Eligible to vote");
  } else {
    print("Age not provided.");
  }

  // loop over a array.
  for (var name in friends) {
    print(name);
  }

  if (year < 2000) {
    print("Old person");
  }

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
