void main() {
  // The string we will use for this example.
  String apple = "This is a random string";
  // Check if the string contains the substring.
  print(stringContains(apple, "random"));
  // Convert the string to all upper case.
  print(stringToUpper(apple));
  // Convert the string to all lower case.
  print(stringToLower(apple));
  // Add two strings together.
  print(addStrings(apple, "and this is another string"));
  // Get the index of a substring.
  print(getIndexOfSubstring(apple, "is"));
  // Convert a int to a string.
  print(convertIntToString(123));
  // Convert a string to an int.
  print(convertStringToInt("123"));
  // Get the length of a string.
  print(getStringLength(apple));
}

// Check if a certain string contains a certain substring.
bool stringContains(String content, String search) {
  return content.contains(search);
}

// Converts a string to all uppercase.
String stringToUpper(String content) {
  return content.toUpperCase();
}

// Converts a string to all lowercase.
String stringToLower(String content) {
  return content.toLowerCase();
}

// Add two strings together.
String addStrings(String firstString, String secondString) {
  return firstString + secondString;
}

// Get the index of a substring in a string.
int getIndexOfSubstring(String content, String search) {
  return content.indexOf(search);
}

// Convert an int to a string.
String convertIntToString(int number) {
  return number.toString();
}

// Convert a string to an int.
int convertStringToInt(String number) {
  return int.parse(number);
}

// Get the length of a string.
int getStringLength(String content) {
  return content.length;
}
