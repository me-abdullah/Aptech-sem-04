// OOP

class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Method
  void greet() {
    print("Hello, my name is $name and I am $age years old.");
  }
}

void main() {
  var person = Person('John', 25);
  person.greet();  // Output: Hello, my name is John and I am 25 years old.
}
