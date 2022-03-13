import "dart:core";

void main() {
  // Create two maps.
  final Map<dynamic, dynamic> firstMap = <dynamic, dynamic>{
    "name": "John",
  };
  final Map<dynamic, dynamic> secondMap = <dynamic, dynamic>{
    "age": 30,
    "isMarried": false
  };
  // Copy the first map to the second.
  print(copyPairFromPrimaryToSecondaryMap(firstMap, secondMap));
}

// Copy all the pair from the primary to secondary map.
Map<dynamic, dynamic> copyPairFromPrimaryToSecondaryMap(
  final Map<dynamic, dynamic> primaryMap,
  final Map<dynamic, dynamic> secondaryMap,
) {
  secondaryMap.addAll(primaryMap);
  return secondaryMap;
}
