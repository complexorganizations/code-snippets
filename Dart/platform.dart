import "dart:io" show Platform;

void main() {
  switch (Platform.operatingSystem) {
    case "android":
      print("android");
      break;
    case "ios":
      print("ios");
      break;
    case "linux":
      print("linux");
      break;
    case "macos":
      print("macos");
      break;
    case "windows":
      print("windows");
      break;
    case "fuchsia":
      print("fuchsia");
      break;
    default:
      print("unknown");
  }
  print(Platform.operatingSystem);
  print(Platform.operatingSystemVersion);
  print(Platform.localHostname);
}
