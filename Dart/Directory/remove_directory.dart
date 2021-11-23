import "dart:core";
import "dart:io";

void main() {
  // Remove a directory
  removeDirectory("assets/remove/89mmtNQY7hM7389f48Sw46ZhbRDNQ2h9/")
}

// Remove a directory
void removeDirectory(final String path) {
  Directory(path).deleteSync(recursive: true);
}
