import 'package:flutter/material.dart';

void isEven(int num1){
  if(num1%2!=0)
    {
      throw Exception("Number is not even");
    }
}

void isEvenWithRethrow(int num1){
  try{
    isEven(7);
  }
  on Exception catch(e)
  {
    // other processes
    rethrow;
  }

}

void main(){
  try{
    isEven(5);
  }
  on Exception catch (e)
  {
    debugPrint("Caught an error $e");
    // .. other operations

  }
  finally{
    debugPrint("No matter exception is catch or not this code will be executed.");
  }
}