import "dart:core";

void main() {
  // Get the index of a substring in a string.
  print(indexOfSubStringInString("This is the given string.", "is"));
}

// Get the index of a substring in a given string.
int indexOfSubStringInString(final String content, final String subString) {
  return content.indexOf(subString);
}
