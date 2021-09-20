#include <fstream>
#include <iostream>
using namespace std;

int main() {
    // Write to a file
    string filename = "example.txt";
    string line = "This is the first line.";
    writeToFile(filename, line);
}


// Write to a file.
void writeToFile(string filename, string text) {
    ofstream MyFile(filename);
    MyFile << text;
    MyFile.close();
}