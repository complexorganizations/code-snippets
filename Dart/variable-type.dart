void main() {
  int apple = 1;
  String pear = "Orange";
  // Get the runtime type of a variable.
  print(getRuntimeType(apple));
  print(getRuntimeType(pear));
}

// Get the runtime type of a variable.
String getRuntimeType(var value) {
  return value.runtimeType.toString();
}