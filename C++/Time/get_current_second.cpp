#include <iostream>

// Get the current second in the minute.
int getCurrentSecond() {
    time_t t;
    struct tm *tm;
    time(&t);
    tm = localtime(&t);
    return tm->tm_sec;
}

int main() {
    // Get the current second in the minute.
    std::cout << getCurrentSecond() << std::endl;
    return 0;
}
