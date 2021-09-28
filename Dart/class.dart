void main() {
  // Set the content for the class
  var content = new Employee();
  content.name = "John Doe";
  content.age = 30;
  content.salary = 45000.50;
  content.isMarried = false;
  print(content.name);
  print(content.age);
  print(content.salary);
  print(content.isMarried);

  // Function inside class
  content.functionInsideClass();
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

  void inputFunctionInsideClass(String content) {
    print(content);
  }

  int returnInsideFunction(int a, int b) {
    return a + b;
  }
}
