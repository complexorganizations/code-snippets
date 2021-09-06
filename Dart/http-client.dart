import "dart:io";
import "dart:convert";

void main() {
  // Send a request to the http server and return the response.
  HttpClient()
      .getUrl(Uri.parse("https://www.example.com"))
      .then((request) => request.close())
      .then((response) => response.transform(Utf8Decoder()).listen(print));
}
