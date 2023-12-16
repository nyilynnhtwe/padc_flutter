import 'package:flutter/material.dart';

void main() {
  String normalString = "I am Nyi.\nI am 22 years old.";
  String rawString = r"I am Nyi.\nI am 22 years old.";
  String multilineString = ''' I am Nyi.
  I am 22 years old.''';
  String name = "nyi";
  int age = 22;
  String interpolatedString = "I am $name. I am $age years old";
  debugPrint(normalString);
  debugPrint(rawString);
  debugPrint(multilineString);
  debugPrint(interpolatedString);

  bool isLoading = true;
  debugPrint(isLoading.toString());

  // parent class of integer and double.
  num numAge = 22;
  debugPrint(age.toString());

  num price = 1500.20;
  debugPrint(price.toString());

  // integer is default 64 bit integer in flutter.
  int children = 12;
  debugPrint(children.toString());

  BigInt numOfPlanets = BigInt.parse(
      "245678901224567890122456789012245678901224567890122456789012");
  print(numOfPlanets);

  // type inference
  // var className = "PADC Flutter 16";
  // className = 16;
  // debugPrint(className)
  //  Error: A value of type 'int' can't be assigned to a variable of type 'String'.

  // dynamic
  dynamic weekOfStudying = 3;
  weekOfStudying = 3.0;
  // weekOfStudying = "7th week";
  debugPrint(weekOfStudying.toString());
  debugPrint(weekOfStudying.runtimeType.toString());

  //final
  // final finalVar;
  // finalVar = 3;
  // finalVar = 5;

  //const
  const constVar = 3;

  // late
  late String foodOfTheDay;
  foodOfTheDay = "Mohinga";
  debugPrint(foodOfTheDay);

  // Null Safety
  // int nullSafeAge;
  // debugPrint(nullSafeAge.toString());
  // nullSafeAge variable never be null
  int? nullUnSageAge;
  debugPrint(nullUnSageAge.toString());
  // nullSafeAge variable can be null (defauly is null)

  // null safe style variable assigning
  int? nullApiResponseAge;
  // စာမေးရန်
  // nullApiResponseAge!=null  nullApiResponseAge ?  : 0;
  // nullApiResponseAge ?? 0;
  // တူတူလား
  int nullSafeApiResponseAge = nullApiResponseAge ?? 0;
  debugPrint(nullSafeApiResponseAge.toString());

  bool nullSafeApiResponseAgeIsEven = nullApiResponseAge?.isEven ?? false;

  // nullable assign
  nullApiResponseAge ??= 200;
}
