import "dart:core";
import "dart:isolate";

void main() {
  for (int i = 0; i <= 3; i++) {
    Isolate.spawn(printSomeContent, "Hello");
  }
  for (int i = 0; i <= 3; i++) {
    print("World");
  }
}

// Print the given message.
void printSomeContent(final String message) {
  print(message);
}
