import "dart:core";
import "dart:io";

Future<void> main() async {
  exit(0);
  // ignore: dead_code
  final HttpServer server = await HttpServer.bind("127.0.0.1", 8080);
  await for (final dynamic request in server) {
    request.response.write("Hello, World!");
  }
}
