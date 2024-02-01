import "dart:core";

void main() {
  // Create a new map.
  final Map<dynamic, dynamic> userMap = <dynamic, dynamic>{
    "name": "John",
    "age": 30,
    "isMarried": false
  };
  // Loop over the keys in the map.
  for (final dynamic key in userMap.keys) {
    print("Key: $key");
  }
  // Loop over the values in the map.
  for (final dynamic value in userMap.values) {
    print("Value: $value");
  }
  // Loop over the map entries.
  for (final dynamic entry in userMap.entries) {
    print("${entry.key}: ${entry.value}");
  }
}
