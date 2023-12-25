import 'package:flutter/material.dart';

// class is the blueprint of object

class Animal {
  // instance variale - object level
  String name;

  Animal(this.name);
}

class Cat extends Animal {
  Cat(String name) : super(name);
}

abstract class formatPrint {
  String printLog();
}

class superPrint extends formatPrint {
  @override
  String printLog() {
    return "google";
  }
}

void main() {
  Animal dog = Animal("dog");
  debugPrint(dog.name);

  Cat cat = Cat("Shwe Kyaung");
  debugPrint(cat.name);
}
