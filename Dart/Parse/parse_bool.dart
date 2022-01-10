import "dart:core";

void main() {
  // Parse a bool from a given content.
  print(parseBool("true"));
}

// Parse a bool and return a bool
bool? parseBool(final dynamic content) {
  if (content.contains("true")) {
    return true;
  } else if (content.contains("false")) {
    return false;
  }
  return null;
}
