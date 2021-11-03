import "dart:core";

// Ways to declare a variable in dart.
void main() {
  // Example of a string variable.
  simpleStringExample();
  // Example of a int variable.
  simpleIntExample();
  // Example of a double variable.
  simpleDoubleExample();
  // Example of a bool variable.
  simpleBoolExample();
  // Example of a list variable.
  simpleListExample();
  // Example of a map variable.
  simpleMapExample();
  // Get the runtime type of the content
  print(getRuntimeType("Hello, World!")); // String
  print(getRuntimeType(1)); // int
  print(getRuntimeType(1.0)); // double
  print(getRuntimeType(true)); // bool
  print(getRuntimeType(<String>["Hello", "World"])); // Array
  print(getRuntimeType(<String, String>{"Hello": "World"})); // Map
}

// A simple example of a string
void simpleStringExample() {
  const String firstName = "John Doe";
  print(firstName);
  const String lastName = "Doe";
  print(lastName);
}

// A simple example of a int
void simpleIntExample() {
  const int age = 30;
  print(age);
  const int dob = 2000;
  print(dob);
}

// A simple example of a double
void simpleDoubleExample() {
  const double height = 1.80;
  print(height);
  const double weight = 80.0;
  print(weight);
}

// A simple example of a bool
void simpleBoolExample() {
  const bool isFemale = true;
  print(isFemale);
  const bool isMale = false;
  print(isMale);
}

// A simple example of a list or array
void simpleListExample() {
  final List<String> list = <String>[
    "Apple", // 0
    "Banana", // 1
    "Orange", // 2
    "Strawberry", // 3
    "Mango" // 4
  ];
  print(list);
  print(list[0]);
  print(list[1]);
}

// A simple example of a map
void simpleMapExample() {
  final Map<dynamic, dynamic> content = <dynamic, dynamic>{
    "name": "John Doe",
    "age": 30,
  };
  print(content);
  print(content["name"]);
  print(content["age"]);
}

// Get the runtime type of a variable.
String getRuntimeType(final dynamic value) {
  return value.runtimeType.toString();
}
