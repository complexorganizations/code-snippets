import "dart:core";

void main() {
  //
}

// Parse a bool and return a bool
bool? parseBool(final dynamic content) {
  if (content == true) {
    return true;
  } else if (content == false) {
    return false;
  }
  return null;
}
