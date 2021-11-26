import "dart:core";
import "dart:io";

void main() {
  // Rename a directory.
  renameDirectory("assets/valid/aDT5V7223266kFX4uv9P9o7ovi6tdWhv/", "assets/valid/aDT5V7223266kFX4uv9P9o7ovi6tdWhv/");
}

// Rename a directory.
void renameDirectory(final String oldPath, final String newPath) {
  Directory(oldPath).renameSync(newPath);
}
