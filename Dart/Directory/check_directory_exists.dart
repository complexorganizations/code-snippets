import "dart:core";
import "dart:io";

void main(){
  // Check if the directory exists.
  print(checkDirectoryExists("assets/valid/j3U5uJY779L49q98MX86iFsxs2kY9ew3/"));
}

// Check if a directory exists
bool checkDirectoryExists(final String path) {
  return FileSystemEntity.typeSync(path) != FileSystemEntityType.notFound;
}
