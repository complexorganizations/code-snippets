import "dart:core";
import "dart:io";

void main() {
  // Clear the users terminal
  clearTerminal();
}

// Clear the user's terminal.
void clearTerminal() {
  stdout.write("\x1B[2J\x1B[0;0H");
}
