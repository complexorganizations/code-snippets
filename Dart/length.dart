void main() {
  // Get the length of a string
  var name = "John Doe";
  print(name.length);

  // Get the length of a map
  var map = {"name": "John Doe", "age": 30, "isMarried": false};
  print(map.length);

  // Get the length of a array
  var set = {1, 2, 3, 4, 5};
  print(set.length);

  print(getVariableLength("This is the string to get the size of."));

  print(getVariableLength("Hello, World!"));
}

// Get the length of a variable.
int getVariableLength(content) {
  return content.length;
}
