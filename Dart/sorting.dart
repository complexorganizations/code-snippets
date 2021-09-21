void main() {
  // create a list of int
  var list = [3, 1, 2, 4, 5];
  print(list);
  // sort the list of int
  var newList = sortIntList(list);
  print(newList);
  // sort the list of string
  var randomString = ["e", "d", "a", "c", "f", "b", "g", "h", "i", "j"];
  print(randomString);
  var newStringList = sortStringList(randomString);
  print(newStringList);
  // sort the list of double
  var randomDouble = [1.1, 2.2, 3.3, 4.4, 5.5, 6.6, 7.7, 8.8, 9.9, 10.0];
  print(randomDouble);
  var newDoubleList = sortDoubleList(randomDouble);
  print(newDoubleList);
}

// Sort the list and return it.
List<int> sortIntList(List<int> content) {
  content.sort();
  return content;
}

// Sort a list of strings and return it.
List<String> sortStringList(List<String> content) {
  content.sort();
  return content;
}

// Sort a list of doubles and return it.
List<double> sortDoubleList(List<double> content) {
  content.sort();
  return content;
}
