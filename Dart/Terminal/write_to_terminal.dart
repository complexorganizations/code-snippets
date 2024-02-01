import "dart:core";
import "dart:io";

void main() {
  // Write some content to the terminal.
  writeToTerminal("Hello, World!");
}

// Write some content to the terminal.
void writeToTerminal(final dynamic content) {
  stdout.writeln(content);
}
