void main() {
  // Creating object of the child class
  final Parrot p = Parrot();
  p.speak();
  p.fly();
}

class Bird {
  void fly() {
    print("The bird can fly");
  }
}

// Inherits the super class
class Parrot extends Bird {
  //child class function
  void speak() {
    print("The parrot can speak");
  }
}
