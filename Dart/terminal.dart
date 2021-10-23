import "dart:core";
import "dart:io";

void main() {
  // User input
  userInput();
  // User output
  writeToTerminal();
  // Clear the terminal
  clearTerminal();
}

// Take in user input and print it back to the user
void userInput() {
  print("Enter your name");
  final String? name = stdin.readLineSync();
  print("Hello, ${name}");
}

// Write some text to the terminal
void writeToTerminal() {
  stdout.writeln("Hello, World");
}

// Clear the terminal
void clearTerminal() {
  stdout.write("\x1B[2J\x1B[0;0H");
}
