//Polymorphism

class Shape {
  void draw() {
    print('Drawing a shape.');
  }
}

class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a circle.');
  }
}

class Rectangle extends Shape {
  @override
  void draw() {
    print('Drawing a rectangle.');
  }
}

void main() {
  Shape shape = Circle();
  shape.draw(); // Output: Drawing a circle.

  shape = Rectangle();
  shape.draw(); // Output: Drawing a rectangle.
}

//Abstraction

abstract class Vehicle {
  void startEngine(); // Abstract method (no body)
}

class Car extends Vehicle {
  @override
  void startEngine() {
    print('Car engine started.');
  }
}

void main() {
  var myCar = Car();
  myCar.startEngine(); // Output: Car engine started.
}
