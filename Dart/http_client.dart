import "dart:convert";
import "dart:core";
import "dart:io";

void main() {
  // Send a request to the http server and return the response.
  HttpClient()
      .getUrl(Uri.parse("https://www.example.com"))
      .then((final dynamic request) => request.close())
      .then(
        (final dynamic response) =>
            response.transform(const Utf8Decoder()).listen(print),
      );
}
