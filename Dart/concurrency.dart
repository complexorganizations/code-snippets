import "dart:isolate";

void main() {
  for (int i = 0; i <= 3; i++) {
    Isolate.spawn(foo, "Hello");
  }
  for (int i = 0; i <= 3; i++) {
    print("World");
  }
}

// Spawns a new isolate and prints the message.
void foo(final String message) {
  print(message);
}
