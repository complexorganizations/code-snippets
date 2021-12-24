import "dart:core";

void main() {
  // CHeck if a given value is null.
  print(isValueNull("1"));
}

// Check if a value is null
bool isValueNull(dynamic content) {
  return content == null;
}
