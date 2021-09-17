void main() {
  // Get the length of a string
  var name = "John Doe";
  print(getVariableLength(name));

  // Get the length of a map
  var map = {"name": "John Doe", "age": 30, "isMarried": false};
  print(getVariableLength(map));

  // Get the length of a array
  var set = {1, 2, 3, 4, 5};
  print(getVariableLength(set));

  print(getVariableLength("This is the string to get the size of."));

  print(getVariableLength("Hello, World!"));
}

// Get the length of a variable.
int getVariableLength(var content) {
  return content.length;
}
