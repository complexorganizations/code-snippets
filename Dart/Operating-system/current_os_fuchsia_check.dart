import "dart:core";
import "dart:io";

void main() {
  // Check if the current os is Fuchsia.
  print(isCurrentOSFuchsia());
}

// Check if the current operating system is Fuchsia.
bool isCurrentOSFuchsia() {
  return Platform.isFuchsia;
}
