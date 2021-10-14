void main() {
  // Parse a int and return it.
  final int i = int.parse("FF", radix: 16);
  print(i);
  // Parse a double and return it.
  final double d = double.parse("-1.e3");
  print(d);
}

// Parse a int and return it
int parseInt(final dynamic content) {
  return int.parse(content);
}

// Parse a double and return it
double parseDouble(final dynamic content) {
  return double.parse(content);
}
