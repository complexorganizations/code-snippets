import "dart:core";
import "dart:io";

void main() {
  // Write string to a file
  writeStringToFile("assets/remove/89mmtNQY7hM7389f", "7Za2hebkUn5FYaqEiznJ5R");
}

// Write string to a file
void writeStringToFile(final String path, final String content) {
  try {
    File(path).writeAsString(content);
  } on Exception catch (e) {
    print(e);
  }
}
