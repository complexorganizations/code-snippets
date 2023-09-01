import "dart:convert";
import "dart:core";

void main() {
  // Check if the provided json is valid json.
  print(
    jsonValidationCheck(
      """{"name":"John Doe","email":"john.doe@example.com"}""",
    ),
  );
  print(jsonValidationCheck("""Hello, World!"""));
}

// Check if the provided JSON is valid
bool jsonValidationCheck(final String content) {
  try {
    json.decode(content);
    return true;
  } on FormatException {
    return false;
  }
}
