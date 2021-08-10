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

  if (age > 18) {
    print("Eligible to vote");
  } else if (age < 18) {
    print("Not eligible to vote");
  } else if (age == 30) {
    print(age);
  } else {
    print("Invalid age.");
  }

  // loop over a array.
  for (var name in friends) {
    print(name);
  }

  // if statement inside of a for block.
  for (int month = 1; month <= 12; month++) {
    if (month == 5) {
      print(month);
    }
  }
}
