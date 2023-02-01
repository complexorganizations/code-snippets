import "dart:convert";
import "dart:core";

void main() {
  // Create a map with random data
  final Map<dynamic, dynamic> originalMap = <dynamic, dynamic>{
    "name": "John Doe",
    "age": 30,
    "city": "New York"
  };
  // Conver the map to JSON
  print(convertMapToJson(originalMap));
}

// Encode Map to JSON string.
String convertMapToJson(final Map<dynamic, dynamic> content) {
  return json.encode(content);
}
