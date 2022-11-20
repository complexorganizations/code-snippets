#include <iostream>
#include <string>

// Get the current time.
std::string getCurrentTime() {
  time_t t;
  time(&t);
  return ctime(&t);
}

int main() {
  // Get the current time
  std::cout << getCurrentTime() << std::endl;
  return 0;
}
