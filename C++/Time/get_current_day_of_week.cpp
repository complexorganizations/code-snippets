#include <iostream>

// Get the current day of the week.
int getCurrentDayOfWeek() {
    time_t t;
    struct tm *tm;
    time(&t);
    tm = localtime(&t);
    return tm->tm_wday;
}

int main() {
    // Get the current day of the week.
    std::cout << getCurrentDayOfWeek() << std::endl;
    return 0;
}