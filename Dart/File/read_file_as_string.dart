import "dart:core";
import "dart:io";

void main() {
  // Read a file as string.
  print(
    readAFileAsString(
      "assets/valid/valid-json.json",
    ),
  );
}

// Read a file as a string and return it.
String? readAFileAsString(final String path) {
  return File(path).readAsStringSync();
}
