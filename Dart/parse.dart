import "dart:core";

void main() {
  // Parse a int and return it.
  print(parseInt("10292"));
  // Parse a double and return it.
  print(parseDouble("-1.e3"));
  // Turn a content into a string.
  print(parseString(10));
}

// Parse a int and return it
int parseInt(final dynamic content) {
  return int.parse(content);
}

// Parse a double and return it
double parseDouble(final dynamic content) {
  return double.parse(content);
}

// Turn a content into a string
String parseString(final dynamic content) {
  return content.toString();
}
