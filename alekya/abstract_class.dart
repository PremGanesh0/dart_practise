// give example for abstract class in dart
void main() {
  Animal dog = Dog();
  dog.makeSound(); // Outputs: Woof!
  dog.eat();
  dog.breathe();
  dog.move();
  dog.sleep();

 helloworld(Animal animal ){
  

 }


}

abstract class Animal {
  void breathe() {
    print("The animal is breathing");
  }

  void eat(); // Abstract method

  // Mandatory methods - must be overridden
  void makeSound(); // Abstract method

  // Another optional method with default behavior
  void move() {
    print("The animal is moving");
  }

  // Optional methods - can be overridden if needed
  void sleep() {
    print("The animal is sleeping peacefully");
  }
}

class Cat extends Animal {
  @override
  void eat() {
    print("The cat is eating");
  }

  @override
  void breathe() {
    print("The cat is breathing softly");
  }

  @override
  void makeSound() {
    print("Meow!");
  }
}

class Dog extends Animal {
  @override
  void eat() {
    print("The cat is eating");
  }

  @override
  void makeSound() {
    print("Woof!");
  }
}
