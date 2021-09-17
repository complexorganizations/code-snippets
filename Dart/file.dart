import "dart:io";

void main() {
  // Open and read a file
  print(readFile("file.txt"));
  // Create and write to a file
  writeToFile("dart.txt", "Random string we will write.");
  // Move a file
  moveFile("dart.txt", "dart2.txt");
  // Get the path of the current executable
  print(getCurrentPath());
  // Check if a file exists
  print(fileExists("dart.txt"));
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