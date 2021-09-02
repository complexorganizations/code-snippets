#include <iostream>
using namespace std;

int main() {
  // Integer
  int a = 10;
  int b = 20;
  int c = a + b;
  printf("%d\n", c);
  // Float
  float d = 10.0;
  float e = 20.0;
  float f = d + e;
  printf("%f\n", f);
  // String
  string g = "Hello";
  string h = "World";
  string i = g + h;
  printf("%s\n", i.c_str());
  // Character
  char j = 'a';
  char k = 'b';
  char l = j + k;
  printf("%c\n", l);
  // Boolean
  bool m = true;
  bool n = false;
  bool o = m && n;
  printf("%d\n", o);
  // Array
  int s[3] = {1, 2, 3};
  int t[3] = {4, 5, 6};
  int u[3] = {s[0] + t[0], s[1] + t[1], s[2] + t[2]};
  printf("%d %d %d\n", u[0], u[1], u[2]);
}
