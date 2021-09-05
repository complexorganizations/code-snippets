void main() {
  // A string into null.
  String? name = "John";
  print(name);
  name = null;
  print(name);
  // A bool into null.
  bool? isValid = true;
  print(isValid);
  isValid = null;
  print(isValid);
  // A double into null.
  double? height = 1.8;
  print(height);
  height = null;
  print(height);
  // A int into null.
  int? age = 18;
  print(age);
  age = null;
  print(age);
  // A list into null.
  List<String>? names = ["John", "Jane"];
  print(names);
  names = null;
  print(names);
  // A map into null.
  Map<String, int>? ages = {"John": 18, "Jane": 19};
  print(ages);
  ages = null;
  print(ages);
  // A variable into null.
  var person = null;
  print(person);
  person = "John Doe";
  print(person);
}
