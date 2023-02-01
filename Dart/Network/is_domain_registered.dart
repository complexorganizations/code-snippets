import "dart:core";
import "dart:io";

Future<void> main() async {
  // Check if the domain is registered
  final bool domainRegisteredCheck = await isDomainRegistered("example.com");
  print(domainRegisteredCheck);
}

// Check if the domain is registered
Future<bool> isDomainRegistered(final String domainName) async {
  bool isRegistered = false;
  try {
    final List<InternetAddress> response =
        await InternetAddress.lookup(domainName);
    if (response.isNotEmpty) {
      isRegistered = true;
    }
  } on SocketException {
    isRegistered = false;
  }
  return isRegistered;
}
