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
}

// Loop from 0 to 100
void zeroToHundred() {
  for (var loop = 0; loop <= 100; loop++) {
    print(loop);
  }
}

// Loop from 100 to 0
void hundredToZero() {
  for (var hole = 100; hole >= 0; hole--) {
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
  final someList = [1, 2, 3];
  for (var i = 0; i < someList.length; i++) {
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
  while (true) {
    counter = counter + 1;
    print("test");
    if (counter == 10) {
      break;
    }
  }
}
