import "dart:io";

void main() async {
  File("file.txt").writeAsString("some content");
}
