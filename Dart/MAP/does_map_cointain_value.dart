import "dart:core";

void main() {
  // Create a new map.
  final Map<dynamic, dynamic> userMap = <dynamic, dynamic>{
    "name": "John",
    "age": 30,
    "isMarried": false
  };
  // Check if the map contains a specific value
  print(userMap.containsValue("John"));
}

// Check if a given map cointain a specific value.
bool doesMapCointainValue(
  final Map<dynamic, dynamic> map,
  final dynamic value,
) {
  return map.values.contains(value);
}
