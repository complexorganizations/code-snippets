import "dart:core";
import "package:http/http.dart" as http;

Future<void> main() async {
  // Send a request and print the response status code.
  final int websiteStatusCode =
      await sendHTTPRequestReturnStatusCode("https://www.example.com");
  print(websiteStatusCode);
}

// Return the response status code after sending a http request.
Future<int> sendHTTPRequestReturnStatusCode(final String providedURL) async {
  final Uri url = Uri.parse(providedURL);
  final http.Response response = await http.post(url);
  return response.statusCode;
}
