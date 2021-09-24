import "dart:io";

void main() {
  // Check the platform version.
  print(Platform.version);
  // Check if the current operating system is Android.
  print(Platform.isAndroid);
  // Check if the current operating system is iOS.
  print(Platform.isIOS);
  // Check if the current operating system is macOS.
  print(Platform.isMacOS);
  // Check if the current operating system is Windows.
  print(Platform.isLinux);
  // Check if the current operating system is FreeBSD.
  print(Platform.isWindows);
  // Check if the current operating system is Fuchsia.
  print(Platform.isFuchsia);
  print(Platform.environment);
  print(Platform.executable);
  // Get the current operating system's name.
  print(Platform.operatingSystem);
  // Get the current operating system's version.
  print(Platform.operatingSystemVersion);
  // Get the current hostname
  print(Platform.localHostname);
  print(Platform.resolvedExecutable);
  print(Platform.script);
  print(Platform.script.authority);
  print(Platform.script.path);
  print(Platform.script.scheme);
  // Check if the current application is running on a docker container.
  print(isRunningInDocker());
}

// Check if the current application is running inside docker container.
bool isRunningInDocker() {
  File myFile = File("/.dockerenv");
  if (myFile.existsSync()) {
    return true;
  } else {
    return false;
  }
}
