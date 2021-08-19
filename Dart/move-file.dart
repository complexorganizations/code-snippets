import "dart:io";

void main() {
  // The path of the old file.
  var oldFileName = "old-file-name";
  // The path of the new file.
  var newFileName = "new-file-name";
  // The path of the directory containing the old file.
  File myFile = File(oldFileName);
  // The path of the directory containing the new file.
  myFile.rename(newFileName);
}
