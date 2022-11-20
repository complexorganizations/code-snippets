#include <iostream>

// Get the percentage of a given number.
float getPercentageOfNumber(float number, float percentage) {
   return number / 100 * percentage;
}

int main() {
   // Get the percentage of a given number.
   printf("%f", getPercentageOfNumber(250, 15));
}
