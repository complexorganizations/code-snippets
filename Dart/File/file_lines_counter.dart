import "dart:core";
import "dart:io";

void main() {
  // Count how many lines are in a file.
  print(countLinesInFile("assets/valid/valid-json.json"));
}

// Count how many lines are in a file.
int countLinesInFile(final String filePath) {
  final File file = File(filePath);
  final List<String> lines = file.readAsLinesSync();
  return lines.length;
}
