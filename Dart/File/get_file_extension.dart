import "dart:core";
import "package:path/path.dart";

void main() {
  // Get the file extension of a file name.
  print(getFileExtension("assets/valid/valid-json.json"));
}

// Get a file's extension.
String getFileExtension(final String filePath) {
  return extension(filePath);
}
