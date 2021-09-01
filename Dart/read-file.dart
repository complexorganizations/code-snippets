import "dart:io";

void main() {
  print(readFile("file.txt"));
}

// Opens the file and returns the contents as a string
String? readFile(String path) {
  File(path).readAsString().then((String contents) {
    return contents;
  });
}