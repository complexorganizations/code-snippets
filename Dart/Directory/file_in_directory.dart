import "dart:io";

// This is the function that will check if a directory contains a specific file
Future<bool> directoryContainsFile(final String dirPath, final String fileName) async {
  // Create a Directory object from the given directory path
  final Directory directory = Directory(dirPath);
  // Check if the directory exists
  if (await directory.exists()) {
    // Get a list of entities (files and directories) in the directory
    final List<FileSystemEntity> entities = directory.listSync();
    // Loop through each entity
    for (final FileSystemEntity entity in entities) {
      // Check if the entity is a file and its path ends with the file name we're looking for
      if (entity is File && entity.path.endsWith(fileName)) {
        // Return true if the file was found
        return true;
      }
    }
  }
  // Return false if the file was not found
  return false;
}

void main() async {
  // Call the `directoryContainsFile` function and pass in the path to the directory and the name of the file to search for
  final bool containsFile = await directoryContainsFile("/path/to/directory", "file.txt");
  // Check the result of the function call
  if (containsFile) {
    // If the function returned true, print a message indicating the file was found
    print("The directory contains the file.");
  } else {
    // If the function returned false, print a message indicating the file was not found
    print("The directory does not contain the file.");
  }
}
