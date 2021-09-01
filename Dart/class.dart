void main() {
  var content = new Employee();
  content.name = "John Doe";
  content.age = 30;
  content.salary = 45000.50;
  print(content.name);
  print(content.age);
  print(content.salary);

  content.functionInsideClass();
}

class Employee {
  String? name;
  int? age;
  double? salary;
  
  functionInsideClass() {
    print("Function inside class.");
  }
}