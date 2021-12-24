import "dart:core";

void main() {
  // Only assing value if its null.
  print(onlyAssignValueIfNull(null, "Hello"));
}

// Only assign a value to a variable if its null.
dynamic onlyAssignValueIfNull(dynamic variable, dynamic content) {
  return variable ??= content;
}
