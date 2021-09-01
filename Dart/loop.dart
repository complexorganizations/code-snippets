void main() {
  // Go up in value
  for (var loop = 0; loop <= 100; loop++) {
    print(loop);
  }
  // Go down in value
  for (var hole = 75; hole >= 50; hole--) {
    print(hole);
  }
  // Loop though a list
  var someList = [1, 2, 3];
  for (var i = 0; i < someList.length; i++) {
    print(someList[i]);
  }
  // Break out of a loop
  for (int i = 0; i < 5; i++) {
    if (i == 3) {
      print(i);
      break;
    }
    print(i);
  }
  // Continue in a loop
  for (int i = 0; i < 5; i++) {
    if (i == 3) {
      print("Hello");
      continue;
    }
    print(i);
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
