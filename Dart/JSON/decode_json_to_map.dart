import "dart:convert";
import "dart:core";

void main() {
  // Decode JSON to map
  print(decodeJsonToMap('{"name":"John Doe","email":"john.doe@example.com"}'));
}

// Decode json into string
Map<String, dynamic> decodeJsonToMap(final String content) {
  return json.decode(content);
}
