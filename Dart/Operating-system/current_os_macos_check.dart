import "dart:core";
import "dart:io";

void main() {
  // Check if the current os is MacOS.
  print(isCurrentOSMacOS());
}

// Check if the current operating system is MacOS.
bool isCurrentOSMacOS() {
  return Platform.isMacOS;
}
