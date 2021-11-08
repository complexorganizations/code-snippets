import "dart:core";

void main() {
  // Set the content for the class
  final Employee content = Employee()
    ..name = "John Doe"
    ..salary = 45000.50
    ..isMarried = false
    ..functionInsideClass();
  print(content.name);
  print(content.age);
  print(content.salary);
  print(content.isMarried);
  content.inputFunctionInsideClass("Jamie");
  print(content.returnInsideFunction(1, 2));
}

// Create a class
class Employee {
  String? name;
  int age = 10;
  double? salary;
  bool? isMarried;

  void functionInsideClass() {
    print("Function inside class.");
  }

  void inputFunctionInsideClass(final String content) {
    print(content);
  }

  int returnInsideFunction(final int a, final int b) {
    return a + b;
  }
}
