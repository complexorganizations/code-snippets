#include <iostream>

#include "direct.h"

// Get the current working directory.
std::string get_current_directory() {
    char buffer[FILENAME_MAX];
    if (_getcwd(buffer, FILENAME_MAX)) {
        return std::string(buffer);
    } else {
        return "";
    }
}

int main() {
    // Current working directory.
    printf("Current working directory: %s\n", get_current_directory().c_str());
    return 0;
}
