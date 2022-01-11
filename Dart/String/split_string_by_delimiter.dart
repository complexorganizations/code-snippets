import "dart:core";

void main() {
  // Split a given string using a given delimiter
  print(splitStringUsingDelimiter("012345-67890", "-"));
}

// Split a given string using a given delimiter
List<String> splitStringUsingDelimiter(
  final String content,
  final String delimiter,
) {
  return content.split(delimiter);
}
