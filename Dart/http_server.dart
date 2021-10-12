import "dart:io";

void main() async {
  exit(0);
  // ignore: dead_code
  final server = await HttpServer.bind("127.0.0.1", 8080);
  await for (final request in server) {
    request.response.write("Hello, World!");
  }
}
