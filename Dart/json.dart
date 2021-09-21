import "dart:convert";

void main() {
  // Encode the json
  var resBody = {};
  resBody["email"] = "example@example.com";
  resBody["password"] = "example.com";
  var user = {};
  user["user"] = resBody;
  String str = json.encode(user);
  print(str);
  // Decode the json.
  var decoded = json.decode(str);
  print(decoded);
}

// Validate a json and return true if it is valid.
bool validateJson(String json) {
  try {
    return true;
  } catch (e) {
    return false;
  }
}
