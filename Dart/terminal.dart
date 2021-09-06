import "dart:io";

void main() {
  stdout.writeln("Hello, World");
  print("Whats your input");
  var content = stdin.readLineSync();
  print(content);
}
