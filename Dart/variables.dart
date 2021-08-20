// Ways to declare a variable in dart.
void main() {
  // 1. var <Name>;
  var fullName = "John Doe";
  print(fullName);
  // 2. var <Name> = <Value>;
  var age;
  age = 30;
  print(age);
  // 3. <Type> <Name>;
  int dob;
  dob = 2000;
  print(dob);
  // 4. <Type> <Name> = <Value>;
  String gender = "Male";
  print(gender);

  // More examples
  var girlName = "Jane Doe";
  print(girlName);

  var dobYearForGirl;
  dobYearForGirl = 2000.12;
  print(dobYearForGirl);

  // float values
  double monthes;
  monthes = 12.43;
  print(monthes);

  // Slice
  var list = ["Apple", "Banana", "Orange", "Strawberry", "Mango", "Pineapple"];
  print(list);
  // From the slice get the first element
  print(list[0]);
  // Get the second element from the slice
  print(list[1]);

  // Bool
  var isFemale = true;
  print(isFemale);

  // Maps
  var content = {
    "name": "John Doe",
    "age": 30,
  };
  // Get the value of the age key
  print(content);
  print(content["age"]);
  // Set the value of the age key
  content["age"] = 31;
  print(content["age"]);
}