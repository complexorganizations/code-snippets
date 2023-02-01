import "dart:core";
import "dart:io";

void main() {
  // Check if a directory is empty.
  print(isDirectoryEmpty("assets/valid/j3U5uJY779L49q98MX86iFsxs2kY9ew3/"));
}

// Check if a given directory is empty.
bool isDirectoryEmpty(final String path) {
  return Directory(path).listSync().isEmpty;
}
