import "dart:core";
import "dart:io";

void main() {
  // Current operating system name.
  print(getCurrentOperatingSystem());
}

// Get the current operating system name.
String getCurrentOperatingSystem() {
  return Platform.operatingSystem;
}
