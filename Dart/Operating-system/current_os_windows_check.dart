import "dart:core";
import "dart:io";

void main() {
  // Check if the current os is Windows.
  print(isCurrentOSWindows());
}

// Check if the current operating system is Windows.
bool isCurrentOSWindows() {
  return Platform.isWindows;
}
