import "dart:core";
import "dart:io";

void main() {
  // Read a file line by line.
  final List<String> lineList =
      readFileLineByLine("assets/valid/valid-json.json");
  for (final String line in lineList) {
    print(line);
  }
}

// Read a file line by line
List<String> readFileLineByLine(final String fileName) {
  final File file = File(fileName);
  return file.readAsLinesSync();
}
