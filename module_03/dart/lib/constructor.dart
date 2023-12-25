import 'package:flutter/material.dart';
// normal constructor
class Vehicle {
  String type;

  Vehicle(this.type);
}


// named constructor
class Airplane {
  int engines;
  Airplane(this.engines);
  Airplane.named(this.engines);
}

// named constructor with named parameter
class Bicycle {
  int? wheels;
  Bicycle(this.wheels);
  Bicycle.namedParameters({this.wheels});
}

void main()
{
  Vehicle v1 = Vehicle("EV");
  debugPrint(v1.type);

  Airplane a1 = Airplane.named(5);
  debugPrint(a1.engines.toString());

  Bicycle b1 = Bicycle.namedParameters();
  debugPrint(b1.wheels.toString());
}
