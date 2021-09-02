#include <iostream>

int main() {
  printf("%d\n", singleReturn(1));
  return 0;
}

// Single return value
int singleReturn(int x) {
  return 5 + x;
}

// Multiple return values
int multiReturn(int x, int y) {
    return x + y;
}