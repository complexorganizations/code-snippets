#include <fstream>
#include <iostream>
#include <string>

int main() {
    std::ifstream file("input.txt");
    std::string str;
    while (std::getline(file, str)) {
        std::cout << str << "\n";
    }
}
