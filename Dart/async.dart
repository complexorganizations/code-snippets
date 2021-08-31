import 'dart:async';

void main() async {
  var x = await four();
  print(x);
}

Future<int> four() async {
  return 4;
}
