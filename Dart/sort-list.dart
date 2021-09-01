void main() {
  // Sort a list
  var randomStuff = [
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z",
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j"
  ];
  print(randomStuff); // without sorting the list
  var newList = sortList(randomStuff);
  print(newList); // while sorting the list
}

// Takes in a list and returns a sorted list
List sortList(List arrayContent) {
  arrayContent.sort();
  return arrayContent;
}
