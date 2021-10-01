import "dart:io";

void main() {
  // Check if the directory exists.
  print(checkDirectoryExists("/"));
  // Get all the files in the directory.
  print(getAllFilesInDirectory("/"));
  // Get all the directories in the directory.
  print(getAllDirectoryInDirectory("/"));
  // Get all the files and directories in the directory.
  print(getAllInDirectory("/"));
  // Create a directory.
  createDirectory("/src/");
  // Rename a directory.
  renameDirectory("/src/", "/source/");
  // Delete a directory.
  removeDirectory("/source/");
}

// Check if a directory exists
bool checkDirectoryExists(String path) {
  return FileSystemEntity.typeSync(path) != FileSystemEntityType.notFound;
}

// Get all the files only in a directory
List<File>? getAllFilesInDirectory(String path) {
  return Directory(path)
      .listSync(recursive: false, followLinks: false)
      .whereType<File>()
      .toList();
}

// Get all the directories only in a directory
List<Directory>? getAllDirectoryInDirectory(String path) {
  return Directory(path)
      .listSync(recursive: false, followLinks: false)
      .whereType<Directory>()
      .toList();
}

// Get all the files and directories in a directory
List<FileSystemEntity>? getAllInDirectory(String path) {
  return Directory(path)
      .listSync(recursive: false, followLinks: false)
      .toList();
}

// Create a directory
void createDirectory(String path) {
  Directory(path).createSync();
}

// Remove a directory
void removeDirectory(String path) {
  Directory(path).deleteSync(recursive: true);
}

// Rename a directory
void renameDirectory(String path, String newPath) {
  Directory(path).renameSync(newPath);
}
