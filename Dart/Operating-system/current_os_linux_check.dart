import "dart:core";
import "dart:io";

void main() {
  // Check if the current os is Linux.
  print(isCurrentOSLinux());
}

// Check if the current operating system is Linux.
bool isCurrentOSLinux() {
  return Platform.isLinux;
}
