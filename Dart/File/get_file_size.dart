import "dart:core";
import "dart:io";

void main() {
  // Get the size of a given file.
  print(
    getFileSize("assets/remove/zVA3m3BEJ5wSe45v93Fi8788z4GoKjnW/README.md"),
  );
}

// Get the size of a given file.
int getFileSize(final String systemFile) {
  final File file = File(systemFile);
  return file.lengthSync();
}
