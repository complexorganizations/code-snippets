import "dart:core";

void main() {
  // Check if the string contains the substring.
  print(doesStringCointainSubstring("John Doe", "Doe"));
}

// Check if the string contains substring
bool doesStringCointainSubstring(final String content, final String substring) {
  return content.contains(substring);
}
