import 'package:flutter/material.dart';

/// a Person class
class Person {
  /// Fields (variables)
  int age;

  /// Constructor
  Person(this.age);

  /// Methods
  void myMethod() {
    debugPrint("Hello from Person class !");
  }
}

/// Constructor
class Car {
  /// Fields (variables)
  String type;

  /// Constructor
  Car(this.type);

  /// nammed constructor
  Car.namedConstructor(this.type);
}

/// Inheretance with override anotation
/// Super class Animal
class Animal {

  /// defulat sound is dog barking
  void sound() {
    debugPrint("dog parking");
  }

  int moveSpeed() {
    return 5;
  }
}

/// Subclass the inherets from Animal class
class Bird extends Animal {
  @override
  void sound() {
    /// change the sound to bird singing
    debugPrint("The Bird is singing");
    super.sound();
  }

  @override
  int moveSpeed() {
    /// get the default move speed of 5
    return super.moveSpeed();
  }
}
