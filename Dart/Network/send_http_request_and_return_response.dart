import "dart:core";
import "package:http/http.dart" as http;

Future<void> main() async {
  final String websiteContent =
      await sendHTTPRequestReturnResponse("https://www.example.com");
  print(websiteContent);
}

// Return the content as a string after sending an HTTP response.
Future<String> sendHTTPRequestReturnResponse(final String providedURL) async {
  final Uri url = Uri.parse(providedURL);
  final http.Response response = await http.post(url);
  return response.body;
}
