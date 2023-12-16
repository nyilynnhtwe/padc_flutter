import 'package:flutter/material.dart';


// fat arrow
int addWithPositionalParams(int a, int b) => a + b;

int addWithNamedParams({int a=0,int b=0}) => (a+1000) + b;

// anonymous function
var divideFunction = (a,b) => a+b;

// Map function is a higher function

// Lexical scope
void main() {
  debugPrint(addWithPositionalParams(1, 2).toString());
  debugPrint(addWithNamedParams(a: 1,b: 2).toString());
  }
