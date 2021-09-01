import "dart:io";

void main() {
  // The path of the old file.
  var oldFileName = "old-file-name";
  // The path of the new file.
  var newFileName = "new-file-name";
  // Moving the file.
  moveFile(oldFileName, newFileName);
}

// Change the location of a file.
void moveFile(String oldFileName, String newFileName) {
  File myFile = File(oldFileName);
  myFile.rename(newFileName);
}