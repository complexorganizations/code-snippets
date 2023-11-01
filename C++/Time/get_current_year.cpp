#include <iostream>

// Get the current year only
int getCurrentYear() {
  time_t t;
  struct tm *tm;
  time(&t);
  tm = localtime(&t);
  return tm->tm_year + 1900;
}

int main() {
  std::cout << getCurrentYear() << std::endl;
  return 0;
}
