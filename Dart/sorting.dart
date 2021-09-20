void main() {
  var list = [3, 1, 2, 4, 5];
  print(list);
  var newList = sortIntList(list);
  print(newList);
}

// Sort the list and return it.
List<int> sortIntList(List<int> content) {
  content.sort();
  return content;
}
