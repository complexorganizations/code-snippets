import "dart:io";

void main() {
  // Some actions.
  print("Hello, World!");
  // Exit the program.
  closeApplication(1);
  // We will never get to this code.
  print("We will never get to this string.");
}

// Simple exit function
void closeApplication(int code) {
  exit(code);
}
