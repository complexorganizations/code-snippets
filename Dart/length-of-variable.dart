void main() {
  print(getVariableLength("This is the string to get the size of."));

  print(getVariableLength("Hello, World!"));
}

// Get the length of a variable.
int getVariableLength(String variable) {
  return variable.length;
}
