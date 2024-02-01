import "dart:core";
import "dart:io";

void main() {
  // Check if the current os is android.
  print(isCurrentOSAndroid());
}

// Check if the current operating system is android and return a bool.
bool isCurrentOSAndroid() {
  return Platform.isAndroid;
}
