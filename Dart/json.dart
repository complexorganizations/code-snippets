import "dart:convert";

void main() {
  // Encode the json
  final resBody = {};
  resBody["email"] = "example@example.com";
  resBody["password"] = "example.com";
  final user = {};
  user["user"] = resBody;
  final String str = json.encode(user);
  print(str);
  // Decode the json.
  final decoded = json.decode(str);
  print(decoded);
}

// Validate a json and return true if it is valid.
bool validateJson(final String json) {
  try {
    return true;
  } catch (e) {
    return false;
  }
}
