import "dart:core";

void main() {
  // The string we will use for this example.
  const String apple = "This is a random string";
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
  // Example of a raw string.
  print(r"This is a \n raw string.");
  // Get the first 3 characters of a value.
  print(getCertainLength(apple, 3));
}

// Check if a certain string contains a certain substring.
bool stringContains(final String content, final String search) {
  return content.contains(search);
}

// Converts a string to all uppercase.
String stringToUpper(final String content) {
  return content.toUpperCase();
}

// Converts a string to all lowercase.
String stringToLower(final String content) {
  return content.toLowerCase();
}

// Add two strings together.
String addStrings(final String firstString, final String secondString) {
  return firstString + secondString;
}

// Get the index of a substring in a string.
int getIndexOfSubstring(final String content, final String search) {
  return content.indexOf(search);
}

// Convert an int to a string.
String convertIntToString(final int content) {
  return content.toString();
}

// Convert a string to an int.
int convertStringToInt(final String number) {
  return int.parse(number);
}

// Get the length of a string.
int getStringLength(final String content) {
  return content.length;
}

// Get the first certain length of a given string
String getCertainLength(final String content, final int lentgh) {
  return content.substring(0, lentgh);
}
