import "dart:core";

void main() {
  // Get the file extension of a file name.
  print(getFileExtension("assets/valid/valid-json.json"));
}

// Get the file extension of a file name.
String? getFileExtension(final String fileName) {
  final int index = fileName.lastIndexOf(".");
  if (index == -1) {
    return null;
  } else {
    return fileName.substring(index + 1);
  }
}
