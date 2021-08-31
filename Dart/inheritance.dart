void main() {
  // Creating object of the child class
  Parrot p = new Parrot();
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
