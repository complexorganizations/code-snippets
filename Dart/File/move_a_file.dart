import "dart:core";
import "dart:io";

void main() {
  // Move a file.
  moveAFile("assets/valid/valid-json.json", "assets/valid/valid-json.json");
}

// Move a file.
void moveAFile(final String oldPath, final String newPath) {
  try {
    File(oldPath).rename(newPath);
  } on Exception catch (error) {
    print(error);
  }
}
