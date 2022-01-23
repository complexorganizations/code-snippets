import "dart:core";
import "dart:io";

void main() {
  // Read a file as string.
  print(
    readAFileAsString(
      "assets/remove/89mmtNQY7hM7389f48Sw46ZhbRDNQ2h9/README.md",
    ),
  );
}

// Read a file as a string and return it.
String? readAFileAsString(final String path) {
  final File file = File(path);
  return file.readAsStringSync();
}
