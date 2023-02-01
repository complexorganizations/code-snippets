import "dart:core";

void main() {
  // Check if a given string has a given suffix
  print(doesStringCointainSuffix("https://www.example.com", ".com"));
}

// Check if a given string has a given suffix
bool doesStringCointainSuffix(final String content, final String suffix) {
  return content.endsWith(suffix);
}
