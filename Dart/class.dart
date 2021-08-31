void main() {
  var emp = new Employee();
  emp.name = "John Doe";
  emp.age = 30;
  emp.salary = 45000.50;
  emp.showEmpInfo();
}

class Employee {
  String? name;
  int? age;
  double? salary;

  showEmpInfo() {
    print(name);
    print(age);
    print(salary);
  }
}
