#include <iostream>
#include <string>

// Get the current date only.
std::string getCurrentDateOnly() {
    time_t t;
    struct tm *tm;
    time(&t);
    tm = localtime(&t);
    char buffer[80];
    strftime(buffer, sizeof(buffer), "%m/%d/%Y", tm);
    return std::string(buffer);
}

int main() {
    // Get the current date only.
    std::cout << getCurrentDateOnly() << std::endl;
    return 0;
}