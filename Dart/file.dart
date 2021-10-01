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
  // Delete a file
  removeFile("bar.txt");
  // Create a file
  createFile("foo.txt");
}

// Opens the file and returns the contents as a string
String? readFile(String path) {
  File(path).readAsString().then((String contents) {
    return contents;
  });
}

// Write a string to a file
void writeToFile(String fileName, String content) {
  File(fileName).writeAsString(content);
}

// Change the location of a file.
void moveFile(String oldFileName, String newFileName) {
  File myFile = File(oldFileName);
  myFile.rename(newFileName);
}

// Get the path of the current executable
String getCurrentPath() {
  return Platform.executable;
}

// Check if a file exists
bool fileExists(String path) {
  File myFile = File(path);
  return myFile.existsSync();
}

// Remove a file
void removeFile(String path) {
  File myFile = File(path);
  myFile.deleteSync();
}

// Create a file.
void createFile(String path) {
  File myFile = File(path);
  myFile.createSync();
}
