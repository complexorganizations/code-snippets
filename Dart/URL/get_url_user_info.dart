import "dart:core";

void main() {
  // Get the user info from a given url.
  print(getUserInfoFromURL("https://user:password@www.example.com"));
}

// Get the user info from a given url.
String getUserInfoFromURL(final String url) {
  final Uri parsedURL = Uri.parse(url);
  return parsedURL.userInfo;
}
