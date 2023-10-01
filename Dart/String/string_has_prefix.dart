import "dart:core";

void main() {
  // Check if a given string has a prefix
  print(doesStringCointainPrefix("https://www.example.com", "https://"));
}

// Check if a given string has a given prefix.
bool doesStringCointainPrefix(final String content, final String prefix) {
  return content.startsWith(prefix);
}
