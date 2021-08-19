import "dart:io";

void main() {
  print(checkDirExists("/")); // true
  print(checkDirExists("/random/path/dosent/exists")); // false
}

bool checkDirExists(String path) {
  return FileSystemEntity.typeSync(path) != FileSystemEntityType.notFound;
}
