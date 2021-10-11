// Ways to declare a variable in dart.
void main() {
  // 1. var <Name>;
  const String fullName = "John Doe";
  print(fullName);
  // 2. var <Name> = <Value>;
  int age;
  age = 30;
  print(age);
  // 3. <Type> <Name>;
  int dob;
  dob = 2000;
  print(dob);
  // 4. <Type> <Name> = <Value>;
  const String gender = "Male";
  print(gender);

  // More examples
  const String girlName = "Jane Doe";
  print(girlName);

  double dobYearForGirl;
  dobYearForGirl = 2000.12;
  print(dobYearForGirl);

  // float values
  double monthes;
  monthes = 12.43;
  print(monthes);

  // Slice
  final List list = ["Apple", "Banana", "Orange", "Strawberry", "Mango"];
  print(list);
  // From the slice get the first element
  print(list[0]);
  // Get the second element from the slice
  print(list[1]);

  // Bool
  bool isFemale = true;
  print(isFemale);
  isFemale = false;
  print(isFemale);

  // Maps
  final content = {
    "name": "John Doe",
    "age": 30,
  };
  // Get the value of the age key
  print(content);
  print(content["age"]);
  // Set the value of the age key
  content["age"] = 31;
  print(content["age"]);

  // Get the runtime type of the content
  print(getRuntimeType(content));
}

// Get the runtime type of a variable.
String getRuntimeType(final value) {
  return value.runtimeType.toString();
}
