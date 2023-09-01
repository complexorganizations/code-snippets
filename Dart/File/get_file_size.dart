import "dart:core";
import "dart:io";

void main() {
  // Get the size of a given file.
  print(
    getFileSize("assets/valid/valid-json.json"),
  );
}

// Get the size of a given file.
int getFileSize(final String systemFile) {
  return File(systemFile).lengthSync();
}
