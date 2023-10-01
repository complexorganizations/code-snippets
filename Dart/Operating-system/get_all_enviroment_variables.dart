import "dart:core";
import "dart:io";

void main() {
  // Get all the environment variables
  print(getAllEnvironmentVariables());
}

// Get all the environment variables.
Map<String, String> getAllEnvironmentVariables() {
  return Platform.environment;
}
