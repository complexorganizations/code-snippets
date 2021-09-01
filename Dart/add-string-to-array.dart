void main() {
  List content = [
    "apple",
    "banana",
    "orange",
  ];
  print(content);
  // add the string here
  var addString = addStringToList(content, "mango");
  print(addString);
}

// Add a string to a list
List addStringToList(List list, String string) {
  list.add(string);
  return list;
}
