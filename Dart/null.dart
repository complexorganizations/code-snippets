import "dart:core";

void main() {
  // String to null
  nullString();
  // Bool to null
  nullBool();
  // double to null
  nullDouble();
  // int to null
  nullInt();
  // List to null
  nullList();
  // Map to null
  nullMap();
  // variable to null
  nullVariable();
}

// A string as nullable.
void nullString() {
  String? name = "John";
  print(name);
  name = null;
  print(name);
}

// A bool as nullable.
void nullBool() {
  bool? isValid = true;
  print(isValid);
  isValid = null;
  print(isValid);
}

// A double as nullable.
void nullDouble() {
  double? height = 1.8;
  print(height);
  height = null;
  print(height);
}

// A int as nullable.
void nullInt() {
  int? age = 18;
  print(age);
  age = null;
  print(age);
}

// A list as nullable.
void nullList() {
  List<String>? names = <String>["John", "Jane"];
  print(names);
  names = null;
  print(names);
}

// A map as nullable.
void nullMap() {
  Map<String, int>? ages = <String, int>{"John": 18, "Jane": 19};
  print(ages);
  ages = null;
  print(ages);
}

// A variable as nullable.
void nullVariable() {
  String? person;
  print(person);
  person = "John Doe";
  print(person);
}
