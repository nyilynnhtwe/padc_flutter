import 'package:flutter/material.dart';
// Generic class
class Box<T> {
  List<T> result = [];

  void put(T newInput) {
    result.add(newInput);
  }

  List<T> get() {
    return result;
  }
}


// Generic method
T genericFindingFirstEleOfList<T>(List<T>input) {
  return input[0];
}

// Extension
// When we want to add extra behaviours without affecting the original class, we use extension
// Let's write extension for int
extension IntExtension on int{
  bool isDivisibleByThree()
  {
    return this%3==0;
  }
}


void main() {
  Box<String> newString = Box<String>();
  newString.put("Google");
  newString.put("Yahoo");
  debugPrint(newString.get().toString());
  debugPrint(genericFindingFirstEleOfList<String>(["google","yahoo"]));
  debugPrint(5.isDivisibleByThree().toString());
}
