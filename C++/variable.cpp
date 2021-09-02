#include <iostream>
using namespace std;

int main() {
  //
}

// String
void stringFunction() {
  string s = "Hello";
  printf("%s\n", s.c_str());
  string t = "World";
  string u = s + t;
  printf("%s\n", u.c_str());
}

// Integer
void integerFunction() {
  int a = 10;
  int b = 20;
  int c = a + b;
  printf("%d\n", c);
}

// Boolean
void booleanFunction() {
  bool a = true;
  printf("%d\n", a);
}

// Array
void arrayFunction() {
  int a[5] = {1, 2, 3, 4, 5};
  printf("%d\n", a[0]);
  printf("%d\n", a[1]);
  printf("%d\n", a);
}

// Float
void floatFunction() {
  float a = 10.0;
  float b = 20.0;
  float c = a + b;
  printf("%f\n", c);
}