import "dart:core";
import "dart:io";

void main() {
  // Get all the files in a given directory.
  print(getAllFilesInDirectory("assets/valid/"));
}

// Get all the files in a directory.
List<File>? getAllFilesInDirectory(final String path) {
  return Directory(path).listSync().whereType<File>().toList();
}
