import "dart:core";

void main() {
  // Check if a given string is whitespaces only.
  print(isStringWhiteSpaceOnly(""));
}

bool isStringWhiteSpaceOnly(final String content) {
  return content.trim().isEmpty;
}
