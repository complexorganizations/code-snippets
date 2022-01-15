#include <iostream>

// Get the current month in the year.
int getCurrentMonth() {
    time_t t;
    struct tm *tm;
    time(&t);
    tm = localtime(&t);
    return tm->tm_mon + 1;
}

int main() {
    // Get the current month in the year.
    std::cout << getCurrentMonth() << std::endl;
    return 0;
}
