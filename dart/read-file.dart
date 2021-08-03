import "dart:io";

void main() {
  File("file.txt").readAsString().then((String contents) {
    print(contents);
  });
}
