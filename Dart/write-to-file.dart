import "dart:io";

void main() {
  writeToFile("dart.txt", "Random string we will write.");
}

// Write a string to a file
void writeToFile(String fileName, String content) {
  File(fileName).writeAsString(content);
}
