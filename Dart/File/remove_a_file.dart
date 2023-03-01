import "dart:core";
import "dart:io";

void main() {
  // Remove a file.
  removeAFile("assets/remove/zVA3m3BEJ5wSe45v93Fi8788z4GoKjnW/README.md");
}

// Remove a file in a specefied path.
void removeAFile(final String path) {
  File(path).deleteSync();
}
