import "dart:async";

void main() async {
  final int x = await four();
  print(x);
}

Future<int> four() async {
  return 4;
}
