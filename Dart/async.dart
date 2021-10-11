import "dart:async";

void main() async {
  final x = await four();
  print(x);
}

Future<int> four() async {
  return 4;
}
