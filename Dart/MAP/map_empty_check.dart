import "dart:core";

void main() {
  // Create a new map.
  final Map<dynamic, dynamic> userMap = <dynamic, dynamic>{
    "name": "John",
    "age": 30,
    "isMarried": false
  };
  // Check if the given map is empty.
  print(isMapEmpty(userMap));
}


// Check if a given map is empty.
bool isMapEmpty(final Map<dynamic, dynamic> userMap) {
  return userMap.isEmpty;
}