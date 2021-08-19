import "dart:io";

// The path of where the file is.
var filePath = "file.txt";

void main() {
  // Read the file
  File(filePath).readAsString().then((String contents) {
    print(contents);
  });
  // Test if the file has a certain thing.
  testFunction();
}

void testFunction() {
  File(filePath).readAsString().then((String contents) {
    if (contents == "Hello, world!") {
      print("Test passed");
    } else {
      print("Test failed");
    }
  });
}
