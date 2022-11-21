import "dart:core";
import "package:path/path.dart";

void main() {
  // Get the name of a file from a path without extension.
  print(getFileNameFromPathWithoutExtension("assets/valid/valid-json.json"));
}

// Get the name of a file from a path without file extension.
String getFileNameFromPathWithoutExtension(final String filePath) {
  return basenameWithoutExtension(filePath);
}
