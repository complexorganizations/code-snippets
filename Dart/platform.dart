import "dart:io";

void main() {
  print(Platform.version);
  print(Platform.isAndroid);
  print(Platform.isIOS);
  print(Platform.isMacOS);
  print(Platform.isLinux);
  print(Platform.isWindows);
  print(Platform.environment);
  print(Platform.executable);
  print(Platform.operatingSystem);
  print(Platform.operatingSystemVersion);
  print(Platform.localHostname);
  print(Platform.resolvedExecutable);
  print(Platform.script);
  print(Platform.script.authority);
  print(Platform.script.path);
  print(Platform.script.scheme);
}
