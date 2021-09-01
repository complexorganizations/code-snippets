import 'dart:isolate';

void main() {
  Isolate.spawn(foo, 'Hello!!');
  Isolate.spawn(foo, 'Greetings!!');
  Isolate.spawn(foo, 'Welcome!!');

  print('execution from main1');
  print('execution from main2');
  print('execution from main3');
}

void foo(var message) {
  print('execution from foo ... the message is :${message}');
}
