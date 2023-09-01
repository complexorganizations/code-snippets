import "dart:core";

void main() {
  // Create a new map.
  final Map<dynamic, dynamic> userMap = <dynamic, dynamic>{
    "name": "John",
    "age": 30,
    "isMarried": false
  };
  // Remove everything from the map.
  print(removeEverythingFromMap(userMap));
}

// remove everything from a given map.
Map<dynamic, dynamic> removeEverythingFromMap(
  final Map<dynamic, dynamic> providedMap,
) {
  providedMap.clear();
  return providedMap;
}
