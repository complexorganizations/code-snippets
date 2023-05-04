import "dart:io";

// Define a function that takes the file path and search string as arguments
Future<bool> fileContainsString(final String filePath, final String searchString) async {
  try {
    // Read the contents of the file into a string
    final String fileContents = await File(filePath).readAsString();

    // Check if the file contains the search string
    if (fileContents.contains(searchString)) {
      // Return true if the search string is found
      return true;
    } else {
      // Return false if the search string is not found
      return false;
    }
  } catch (e) {
    // Catch and print any errors that occur while reading the file
    print("An error occurred while reading the file: $e");
    return false;
  }
}

void main() async {
  // Define the file path and search string
  const String filePath = "path/to/file.txt";
  const String searchString = "example";

  // Call the fileContainsString function and store the result
  final bool result = await fileContainsString(filePath, searchString);

  // Print the result
  print(result);
}
