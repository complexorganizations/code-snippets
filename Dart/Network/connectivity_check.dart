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
  final List<String> domainLists = <String>[
    "amazon.com",
    "apple.com",
    "cloudflare.com",
    "facebook.com",
    "github.com",
    "google.com",
    "reddit.com",
    "twitter.com",
    "wikipedia.org",
    "youtube.com",
  ];
  for (final String domain in domainLists) {
    try {
      final List<InternetAddress> response =
          await InternetAddress.lookup(domain);
      if (response.isNotEmpty) {
        connectivity = true;
      }
    } on SocketException {
      connectivity = false;
    }
  }
  return connectivity;
}
