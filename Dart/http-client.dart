import 'package:http/http.dart' as http;

void main() async {
  var request = http.Request('GET', Uri.parse('https://api.ipengine.dev'));
  request.body = "";
  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  } else {
    print(response.reasonPhrase);
  }
}
