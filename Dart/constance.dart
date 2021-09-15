void main() {
  finalVariable();
  constVariable();
}

void finalVariable() {
  // Have a constant variable of int type
  final int a = 1;
  print(a);
  // Have a constant variable of double type
  final double b = 1.1;
  print(b);
  // Have a constant variable of String type
  final String c = "Hello";
  print(c);
  // Have a constant variable of bool type
  final bool d = true;
  print(d);
  // Have a constant variable of List type
  final List<int> e = [1, 2, 3];
  print(e);
  // Have a constant variable of Map type
  final Map<String, int> f = {"a": 1, "b": 2, "c": 3};
  print(f);
  // Have a constant variable of Set type
  final Set<int> g = {1, 2, 3};
  print(g);
}

void constVariable() {
  // Have a constant variable of int type
  const int x = 10;
  print(x);
  // Have a constant variable of double type
  const double y = 3.14;
  print(y);
  // Have a constant variable of string type
  const String name = "John";
  print(name);
  // Have a constant variable of bool type
  const bool isTrue = true;
  print(isTrue);
  // Have a constant variable of list type
  const List<int> list = [1, 2, 3];
  print(list);
  // Have a constant variable of map type
  const Map<String, int> map = {"one": 1, "two": 2};
  print(map);
  // Have a constant variable of set type
  const Set<int> set = {1, 2, 3};
  print(set);
}

// Whats the difference between const and final?
// const and final is used to declare a variable that cannot be changed after its initial value is set.
