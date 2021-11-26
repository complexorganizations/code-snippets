import "dart:core";
import "dart:io";

void main() {
  // Get all the directories in a given directory.
  print(getAllDirectoryInDirectory("assets/valid/"));
}

// Get all the directories only in a directory
List<Directory>? getAllDirectoryInDirectory(final String path) {
  return Directory(path)
      .listSync()
      .whereType<Directory>()
      .toList();
}
