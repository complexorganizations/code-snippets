import "dart:core";
import "dart:io";

void main() {
  // Current operating system version.
  print(getCurrentOperatingSystemVersion());
}

// Get the current operating system version
String getCurrentOperatingSystemVersion() {
  return Platform.operatingSystemVersion;
}
