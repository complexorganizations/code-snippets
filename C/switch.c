#include <stdio.h>
#include <string.h>

int main() {
  // A simple switch statement with ints
  integerSwitch();
  // A simple switch statement with strings
  stringSwitch();
  return 0;
}

// A simple integer switch statement
void integerSwitch() {
  int age = 25;
  switch (age) {
  case 25:
    printf("25");
    break;
  case 26:
    printf("26");
    break;
  case 27:
    printf("27");
    break;
  default:
    printf("default");
  }
}

// A simple string switch statement
void stringSwitch() {
  char name = 'John';
  switch (name) {
  case 'John':
    printf("John");
    break;
  case 'Jane':
    printf("Jane");
    break;
  case 'Joe':
    printf("Joe");
    break;
  default:
    printf("default");
  }
}
