import "dart:io";

void main() {
  // Create and write to a file
  writeToFile("foo.txt", "Random string we will write.");
  // Open and read a file
  print(readFile("foo.txt"));
  // Move a file
  moveFile("foo.txt", "bar.txt");
  // Get the path of the current executable
  print(getCurrentPath());
  // Check if a file exists
  print(fileExists("bar.txt"));
  // Create a file
  createFile("foo.txt");
  // Delete a file
  removeFile("foo.txt");
}

// Opens the file and returns the contents as a string
String? readFile(final String path) {
  final File file = File(path);
  if (!file.existsSync()) {
    return null;
  }
  return file.readAsStringSync();
}

// Write a string to a file
void writeToFile(final String fileName, final String content) {
  File(fileName).writeAsString(content);
}

// Change the location of a file.
void moveFile(final String oldFileName, final String newFileName) {
  File(oldFileName).rename(newFileName);
}

// Get the path of the current executable
String getCurrentPath() {
  return Platform.executable;
}

// Check if a file exists
bool fileExists(final String path) {
  final File myFile = File(path);
  return myFile.existsSync();
}

// Remove a file
void removeFile(final String path) {
  File(path).deleteSync();
}

// Create a file.
void createFile(final String path) {
  File(path).createSync();
}
