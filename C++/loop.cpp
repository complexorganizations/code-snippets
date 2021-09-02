#include <iostream>

int main() {
  // Loop through the numbers 1 to 10
  for (int i = 0; i < 10; i++) {
    printf("%d\n", i);
  }
  // Loop through an array
  int arr[] = {38438, 4343, 984, 875, 4232};
  for (int i = 0; i < 5; i++) {
    printf("%d\n", arr[i]);
  }
  // Loop forever
  for (;;) {
    printf("We will loop forever.\n");
  }
  return 0;
}