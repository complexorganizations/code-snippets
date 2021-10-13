import "dart:convert";

void main() {
  // Encode the json
  final Map<dynamic, dynamic> resBody = <dynamic, dynamic>{};
  resBody["email"] = "example@example.com";
  resBody["password"] = "example.com";
  final Map<dynamic, dynamic> user = <dynamic, dynamic>{};
  user["user"] = resBody;
  final String str = json.encode(user);
  print(str);
  // Decode the json.
  final Map<dynamic, dynamic> decoded = json.decode(str);
  print(decoded);
}

// Validate a json and return true if it is valid.
bool validateJson(final Map<dynamic, dynamic> json) {
  return false;
}