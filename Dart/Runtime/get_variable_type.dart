import "dart:core";

void main() {
  // Get the runtime type of a given variable
  print(getRuntimeVariableType(true));
}

// Get the runtime type of a given variable.
String getRuntimeVariableType(final dynamic content) {
  return content.runtimeType.toString();
}
