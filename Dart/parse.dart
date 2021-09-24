void main() {
  // Parse a int and return it.
  int i = int.parse("FF", radix: 16);
  print(i);
  // Parse a double and return it.
  double d = double.parse("-1.e3");
  print(d);
}

// Parse a int and return it
int parseInt(String s) {
  return int.parse(s);
}

// Parse a double and return it
double parseDouble(String s) {
  return double.parse(s);
}
