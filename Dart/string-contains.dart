void main() {
  // The string we will use for this example.
  String apple = "This is a random string";
  print(stringContains(apple, "random"));
  print(stringContains(apple, "stuff"));
}

// Check if a certain string contains a certain substring.
bool stringContains(String content, String search) {
  return content.contains(search);
}
