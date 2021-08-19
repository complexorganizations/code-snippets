import "dart:io";

void main() async {
  // No variables.
  File("file.txt").writeAsString("This is the content to write to the file.");

  // Variables.
  String fileInSystem = "apple.txt";
  String contentToWrite = "Some random string goes here";
  File(fileInSystem).writeAsString(contentToWrite);

  // Partial variables.
  String systemPath = "rock.txt";
  File(systemPath)
      .writeAsString("This is a random string we will write to this file.");

  // Partial variables with a default value.
  String randomString = "This is a random string.";
  File("dart.txt").writeAsString(randomString);
}
