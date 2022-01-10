import "dart:core";
import "dart:io";

void main() {
  // Take in user input from the terminal
  print("Whats your name?");
  var userinput = userInputFromTerminal();
  print("Your name is ${userinput}");
}

// Take in user input in the terminal.
String? userInputFromTerminal() {
  final String? content = stdin.readLineSync();
  return content;
}
