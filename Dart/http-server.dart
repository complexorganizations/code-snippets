import "dart:io";

main() async {
  var server = await HttpServer.bind("localhost", 8080);

  await for (var request in server) {
    request.response.write("Hello world");
    request.response.close();
  }
}
