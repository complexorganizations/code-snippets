import "dart:core";

void main() {
  // Go up in value
  zeroToHundred();
  // Go down in value
  hundredToZero();
  // Continue inside a loop
  continueLoop();
  // Loop though a list
  loopFromList();
  // Break out of a loop
  breakLoop();
  // Loop forever
  loopForever();
  // Loop while
  whileLoop();
  // Bool while loop.
  boolWhileLoop();
}

// Loop from 0 to 100
void zeroToHundred() {
  for (int loop = 0; loop <= 100; loop = loop + 1) {
    print(loop);
  }
}

// Loop from 100 to 0
void hundredToZero() {
  for (int hole = 100; hole >= 0; hole = hole - 1) {
    print(hole);
  }
}

// Continue in a loop
void continueLoop() {
  for (int i = 0; i < 5; i++) {
    if (i == 3) {
      print("Hello");
      continue;
    }
    print(i);
  }
}

// Loop though a list
void loopFromList() {
  final List<int> someList = <int>[1, 2, 3];
  for (int i = 0; i < someList.length; i++) {
    print(someList[i]);
  }
}

// Break out of a loop
void breakLoop() {
  for (int i = 0; i < 5; i++) {
    if (i == 3) {
      print(i);
      break;
    }
    print(i);
  }
}

// Loop forever
void loopForever() {
  int counter = 0;
  for (;;) {
    counter = counter + 1;
    print("test");
    if (counter == 10) {
      break;
    }
  }
}

// A simple example of a while loop.
void whileLoop() {
  int i = 0;
  while (i < 5) {
    print(i);
    i = i + 1;
  }
}

// Another example of a while loop.
void boolWhileLoop() {
  bool isTrue = true;
  while (isTrue) {
    print(isTrue);
    isTrue = false;
  }
}
