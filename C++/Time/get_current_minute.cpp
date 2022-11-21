#include <iostream>

// Get the current minute in the hour.
int getCurrentMinute() {
    time_t t;
    struct tm *tm;
    time(&t);
    tm = localtime(&t);
    return tm->tm_min;
}

int main() {
    // Get the current minute in the hour.
    std::cout << getCurrentMinute() << std::endl;
    return 0;
}