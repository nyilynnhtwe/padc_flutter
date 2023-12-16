import 'package:flutter/material.dart';
void main(){
  int a = 1;
  int b= 3;
  debugPrint((a+b).toString());
  debugPrint((a-b).toString());
  debugPrint((a*b).toString());
  debugPrint((a/b).toString());
  debugPrint((a%b).toString());
  b++;
  a++;
  debugPrint((a==b).toString());
  debugPrint((a>=b).toString());
  debugPrint((a>b).toString());
  debugPrint((a<b).toString());

  // type test
  debugPrint((a is String).toString());
  debugPrint((a !is String).toString());

  a+=b;
  a-=b;

  bool first = true;
  bool second = false;
  debugPrint((first && second).toString());
  debugPrint((first || second).toString());
  debugPrint((!second).toString());

}