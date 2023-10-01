import "dart:core";
import "dart:io";

void main() {
  // Check if the current os is ios.
  print(isCurrentOSIOS());
}

// Check if the current operating system is ios.
bool isCurrentOSIOS() {
  return Platform.isIOS;
}
