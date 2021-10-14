void main() {
  // Set the content for the class
  final Employee content = Employee()
    ..name = "John Doe"
    ..age = 30
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

class Employee {
  String? name;
  int? age;
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
