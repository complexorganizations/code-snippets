void main() {
  // Make a null value.
  var stuffHere = null;
  print(stuffHere);
  // a null value can be assigned to any type.
  stuffHere = "stuff goes here";
  print(stuffHere);
  // a null value from string to a int
  stuffHere = 2;
  print(stuffHere);
  // a null value to a double
  stuffHere = 2.5;
  print(stuffHere);
  // a null value to a bool
  stuffHere = true;
  print(stuffHere);
  // a null value to a list
  stuffHere = [1, 2, 3];
  print(stuffHere);
  // a null value to a map
  stuffHere = {'one': 1, 'two': 2, 'three': 3};
  print(stuffHere);
  // a null value to a null
  stuffHere = null;
  print(stuffHere);
  // a null int value
  int? aNullableInt = null;
  print(aNullableInt);
  // a null double value
  double? randomStuff = null;
  print(randomStuff);
  // a null bool value
  bool? aNullableBool = null;
  print(aNullableBool);
}
