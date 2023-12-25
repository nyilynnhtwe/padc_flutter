import 'package:flutter/material.dart';

// Singleton pattern
// On running app, a class must have only one instance(object)

class Singleton {
  // static is class level.
  static Singleton? _instance;

  // private constructor
  Singleton._internal();

  // Exposed to other classed
  factory Singleton() {
    _instance ??= Singleton._internal();
    // to ensure that instance is not null
    return _instance!;
  }
}

class Dota2Hero {
  String? name;
  String? attackType;
}

void main() {
  // cascade notation
  // builder design patter is implemented by dart in language level.
  // - setter
  // - getter
  Dota2Hero sniper = Dota2Hero()
    ..name = "Sniper"
    ..attackType = "Ranged";
}
