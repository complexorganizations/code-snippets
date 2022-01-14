import "dart:core";
import "dart:io";

Future<void> main() async {
  // Check if there is network connectivity.
  final bool networkConnectivityCheck = await connectivityCheck();
  print(networkConnectivityCheck);
}

// Check if there is network on the current system.
Future<bool> connectivityCheck() async {
  bool connectivity = false;
    try {
      final List<InternetAddress> response =
          await InternetAddress.lookup("https://www.example.com");
      if (response.isNotEmpty) {
        connectivity = true;
      }
    } on SocketException {
      connectivity = false;
    }
  return connectivity;
}
