import "dart:core";
import "dart:io";

Future<void> main() async {
  // Return the content of a file in bytes.
  final List<int> bytesFromFile = await readFileAndReturnAsBytes("assets/valid/j3U5uJY779L49q98MX86iFsxs2kY9ew3/README.md");
  print(bytesFromFile);
}

// Return the contents of a file as bytes after reading it.
Future<List<int>> readFileAndReturnAsBytes(final String path) async {
  return File(path).readAsBytes();
}
