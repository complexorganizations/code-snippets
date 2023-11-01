import "dart:core";
import "dart:io";

void main() {
  // Get the number of processors.
  print(getProcessCount());
}

// Get the numbers of processes running on the system.
int getProcessCount() {
  return Platform.numberOfProcessors;
}
