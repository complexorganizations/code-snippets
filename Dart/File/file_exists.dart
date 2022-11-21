import "dart:core";
import "dart:io";

void main() {
  // Check if a file exists.
  print(fileExists("assets/valid/j3U5uJY779L49q98MX86iFsxs2kY9ew3/README.md"));
}

// Check if a file exists and return a boolean
bool fileExists(final String path) {
  return File(path).existsSync();
}
