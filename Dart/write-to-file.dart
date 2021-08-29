import "dart:io";

void main() {
  writeToFile(
      "dart.txt", "This is a random string we will write to this file.");
}

// Write a string to a file
void writeToFile(String fileName, String content) {
  File(fileName).writeAsString(content);
}
