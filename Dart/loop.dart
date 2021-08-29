void main() {
  // Go up in value
  for (var loop = 0; loop <= 100; loop++) {
    print(loop);
  }
  // Go down in value
  for (var hole = 75; hole >= 50; hole--) {
    print(hole);
  }
  // Loop forever
  while (true) {
    print("test");
  }
  // ignore: dead_code
  for (;;) {
    print("second test");
  }
}
