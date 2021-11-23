import "dart:core";
import "dart:io";

void main() {
  // Create a directory
  createDirectory("assets/remove/9WpmjE2856TAk3gNFKA5ypg5YL2b6D2r");
}

// Create a directory in a given path
void createDirectory(final String path) {
  Directory(path).createSync();
}
