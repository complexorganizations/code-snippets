import "dart:core";
import "dart:io";

void main() {
  // Append and write to a file
  appendAndWriteToFile(
    "assets/valid/j3U5uJY779L49q98MX86iFsxs2kY9ew3/P55oRK95G755P7j3TqGa7G52Y",
    "m2fp2B27B5AoY3t3Qo5NP4968",
  );
}

// Append and write some content to a file.
void appendAndWriteToFile(final String fileName, final String content) {
  File(fileName).writeAsStringSync(content, mode: FileMode.append);
}
