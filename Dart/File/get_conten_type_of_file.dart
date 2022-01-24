import "dart:core";
import "package:mime/mime.dart";

void main() {
  // Get the content type of a file
  print(getContenTypeOfFile("assets/valid/valid-json.json"));

}

// Get the content type of a given file.
String? getContenTypeOfFile(final String filePath) {
  return lookupMimeType(filePath);
}
