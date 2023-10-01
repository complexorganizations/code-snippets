import "dart:core";
import "dart:io";

void main() {
  // Get the path of dart executable.
  print(getDartExecutablePath());
}

// Get the path of dart executable.
String getDartExecutablePath() {
  return Platform.executable;
}
