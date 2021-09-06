import "dart:io";
import "dart:convert";

void main() {
  HttpClient()
      .getUrl(Uri.parse("https://www.example.com"))
      .then((request) => request.close())
      .then((response) => response.transform(Utf8Decoder()).listen(print));
}

// Send a request to the server and return the response.
String? sendRequest(String url) {
  HttpClient client = new HttpClient();
  client.getUrl(Uri.parse(url))
      .then((request) => request.close())
      .then((response) => response.transform(Utf8Decoder()).listen(print));
}