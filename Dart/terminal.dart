import "dart:io";

void main() {
  // User input
  userInput();
  // User output
  writeToTerminal();
}

// Take in user input and print it back to the user
void userInput() {
  print("Enter your name");
  var name = stdin.readLineSync();
  print("Hello, ${name}");
}

// Write some text to the terminal
void writeToTerminal() {
  stdout.writeln("Hello, World");
}
