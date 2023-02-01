import "dart:core";
import "dart:io";

void main() {
  // Check if the application is running inside docker.
  print(isRunningInsideDocker());
}

// Check if the current application is running inside docker.
bool isRunningInsideDocker() {
  return File("/.dockerenv").existsSync();
}
