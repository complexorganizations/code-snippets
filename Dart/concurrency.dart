import "dart:isolate";

void main() {
  for (int i = 0; i < 3; i++) {
    Isolate.spawn(foo, "Hello");
  }
  for (int i = 0; i < 3; i++) {
    print("World");
  }
}

void foo(var message) {
  print("${message}");
}
