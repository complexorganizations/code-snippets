import "dart:core";
import "package:path/path.dart";

void main() {
  // Get the name of a file from a path.
  print(getFileNameFromPath("assets/valid/valid-json.json"));
}

// Get the name of a file from a path.
String getFileNameFromPath(final String filePath) {
  return basename(filePath);
}
