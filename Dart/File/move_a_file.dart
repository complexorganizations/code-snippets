import "dart:core";
import "dart:io";

void main() {
  // Move a file.
  moveAFile("assets/remove/89mmtNQY7hM7389f48Sw46ZhbRDNQ2h9/README.md", "assets/remove/89mmtNQY7hM7389f48Sw46ZhbRDNQ2h9/README.md");
}

// Move a file.
void moveAFile(final String oldPath, final String newPath) {
  File(oldPath).rename(newPath);
}
