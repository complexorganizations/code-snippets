import "dart:core";
import "dart:io";

void main() {
  // Check if the current app is running inside docker container.
  print(isRunningInDocker());
  // Get the current operating system.
  print(getOperatingSystemName());
  // Get the current operating system version.
  print(getOperatingSystemVersion());
  // Get the current local hostname.
  print(getLocalHostname());
  // Check if the current os is android.
  print(isAndroid());
  // Check if the current os is ios.
  print(isIOS());
  // Check if the current os is windows.
  print(isWindows());
  // Check if the current os is macos.
  print(isMacOS());
  // Check if the current os is linux.
  print(isLinux());
  // Check if the current os is fushsia.
  print(isFuchsia());
  // Get the current platform environment.
  print(getPlatformEnvironment());
  // Get the current platform executable.
  print(getPlatformExecutable());
  // Get the current platform resolved executable.
  print(getPlatformResolvedExecutable());
  // Get the number of processors.
  print(getNumberOfProcessors());
  // Close the current app.
  closeApplication(0);
}

// Check if the current application is running inside docker container.
bool isRunningInDocker() {
  final File myFile = File("/.dockerenv");
  if (myFile.existsSync()) {
    return true;
  } else {
    return false;
  }
}

// Current operating system
String getOperatingSystemName() {
  return Platform.operatingSystem;
}

// Current operating system version
String getOperatingSystemVersion() {
  return Platform.operatingSystemVersion;
}

// Current local hostname
String getLocalHostname() {
  return Platform.localHostname;
}

// Check if the current os is andorid
bool isAndroid() {
  return Platform.isAndroid;
}

// Check if the current os is ios
bool isIOS() {
  return Platform.isIOS;
}

// Check if the current os is macos
bool isMacOS() {
  return Platform.isMacOS;
}

// Check if the current os is windows
bool isWindows() {
  return Platform.isWindows;
}

// Check if the current os is linux
bool isLinux() {
  return Platform.isLinux;
}

// Check if the current os is fuchsia
bool isFuchsia() {
  return Platform.isFuchsia;
}

// Get the current platform environment variable.
Map<String, String> getPlatformEnvironment() {
  return Platform.environment;
}

// Get the current platform executable.
String getPlatformExecutable() {
  return Platform.executable;
}

// Get the current platform resolvedExecutable.
String getPlatformResolvedExecutable() {
  return Platform.resolvedExecutable;
}

// Get the number of processors.
int getNumberOfProcessors() {
  return Platform.numberOfProcessors;
}

// Simple exit function
void closeApplication(final int code) {
  exit(code);
}
