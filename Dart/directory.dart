import "dart:io";

void main() {
  print(checkDirExists("/")); // true
  print(checkDirExists("/random/path/dosent/exists/")); // false
  print(getFiles("/"));
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
