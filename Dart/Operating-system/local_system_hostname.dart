import "dart:core";
import "dart:io";

void main() {
  // Get the current local system hostname.
  print(getLocalSystemHostname());
}

// Get the current local system hostname.
String getLocalSystemHostname() {
  return Platform.localHostname;
}
