import "dart:core";
import "dart:io";

void main() {
  // Get the size of a directory.
  print(getDirectorySize("assets/remove/zVA3m3BEJ5wSe45v93Fi8788z4GoKjnW"));
}

// Get the size of a directory.
int getDirectorySize(final String systemPath) {
  final Directory directory = Directory(systemPath);
  int size = 0;
  directory.listSync().forEach((final FileSystemEntity entity) {
    if (entity is File) {
      size += entity.lengthSync();
    } else if (entity is Directory) {
      size += getDirectorySize(entity.path);
    }
  });
  return size;
}
