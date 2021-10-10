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
  createDirectory("random-folder/");
  // Rename a directory.
  renameDirectory("random-folder/", "source/");
  // Delete a directory.
  removeDirectory("source/");
  // current directory.
  print(getCurrentWorkingDirectory());
  // Check if the directory is empty.
  print(isDirectoryEmpty("/"));
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

// Get the path to the current working directory
String getCurrentWorkingDirectory() {
  return Directory.current.path;
}

// Check if a directory is empty
bool isDirectoryEmpty(String path) {
  return Directory(path).listSync().isEmpty;
}
