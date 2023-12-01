import "dart:core";
import "dart:io";

void main() {
  // Get the current working directory.
  print(getCurrentWorkingDirectory());
}

// Get the current working directory.
String getCurrentWorkingDirectory() {
  return Directory.current.path;
}
