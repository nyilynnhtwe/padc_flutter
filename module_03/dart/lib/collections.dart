import 'package:flutter/material.dart';

void main() {
  // List
  // all elements in the list must be same data type.
  // index based. so performace is good ( constant time )
  // allow duplicate values.
  // inserting order.
  List<int> ages = [12, 21, 34, 12];
  debugPrint(ages.toString());

  ages.add(100);
  ages.addAll([123, 1111, 100, 222]);
  debugPrint(ages.toString());

  ages.remove(100);
  ages.removeAt(0);
  debugPrint(ages.toString());

  bool isTweleveContained = ages.contains(12);
  debugPrint(isTweleveContained.toString());
  debugPrint(ages.length.toString());

  ages[0] = 10000;
  debugPrint(ages.toString());

  List<int> incomingAges = [12, 32, 2132];
  List<int> updatedAges = [...ages, ...incomingAges];
  debugPrint(updatedAges.toString());

  //Map function
  // MappedListIterable<int, int>
  var modifiedAges = ages.map((age) => age + 100000);
  debugPrint(modifiedAges.runtimeType.toString());
  debugPrint(modifiedAges.toString());

  // Where
  var isEvenAges = ages.where((age) => age.isEven);
  debugPrint(isEvenAges.runtimeType.toString());
  debugPrint(isEvenAges.toString());

  // Set
  // only unique elements
  // no insertion order
  Set<int> uniqueAges = {12, 13, 12};
  debugPrint(uniqueAges.toString());

  uniqueAges.add(100);
  uniqueAges.addAll({123, 1111, 222});
  debugPrint(uniqueAges.toString());

  uniqueAges.remove(100);
  debugPrint(uniqueAges.toString());

  // Map
  // key-value paris
  Map<String, int> persons = {"nyilynnhtwe": 22, "Jordan": 22};
  debugPrint(persons.toString());
  persons["Joele"] = 100;
  persons["Joele"] = 200;
  debugPrint(persons.toString());

  debugPrint(persons.containsKey("Jordan").toString());
  debugPrint(persons.containsValue(22).toString());

  debugPrint(persons.keys.toList().toString());
  debugPrint(persons.values.toString());

  persons.clear();
  debugPrint(persons.toString());
}
