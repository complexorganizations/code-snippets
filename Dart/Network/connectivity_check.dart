import "dart:core";
import "dart:io";

Future<void> main() async {
  // Check if there is network connectivity.
  final bool networkConnectivityCheck = await connectivityCheck();
  print(networkConnectivityCheck);
}

// Check if there is network on the current system.
Future<bool> connectivityCheck() async {
  try {
    final List<InternetAddress> response =
        await InternetAddress.lookup("example.com");
    if (response.isNotEmpty) {
      return true;
    }
  } on SocketException {
    return false;
  }
  return false;
}
