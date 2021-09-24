import "dart:io";

void main() {
  // Check if the directory exists.
  print(checkDirExists("/"));
  // Get all the files in the directory.
  print(getFiles("/"));
  // Get all the directories in the directory.
  print(getDirectories("/"));
}

// Check if a directory exists
bool checkDirExists(String path) {
  return FileSystemEntity.typeSync(path) != FileSystemEntityType.notFound;
}

// Get all the files only in a directory
List<File>? getFiles(String path) {
  return Directory(path)
      .listSync(recursive: false, followLinks: false)
      .whereType<File>()
      .toList();
}

// Get all the directories only in a directory
List<Directory>? getDirectories(String path) {
  return Directory(path)
      .listSync(recursive: false, followLinks: false)
      .whereType<Directory>()
      .toList();
}
