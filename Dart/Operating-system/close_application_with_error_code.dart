import "dart:core";
import "dart:io";

void main() {
  // Close the application with a given error code.
  closeApplicationWithErrorCode(0);
}

// Close the application with a given error code.
void closeApplicationWithErrorCode(final int code) {
  exit(code);
}
