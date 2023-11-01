import "dart:core";
import "dart:io";

void main() {
  // Get all the documents in a given directory.
  print(getEverythingFromDirectory("assets/valid/"));
}

// Get all the documents in a given directory
List<FileSystemEntity>? getEverythingFromDirectory(final String path) {
  return Directory(path).listSync().toList();
}
