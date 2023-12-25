import 'package:flutter/material.dart';

//  isolate is a memory space on a running device's memory .
// in an isolate => 1 thread and 1 event loop
// dart is single-threaded language.

// when running a flutter app, a thread is created on device. that is called main isolate.

// Eventloop -> supports wait without blocking
// Network Request is an event.

// Event Loop can handle
// long running operations not CPU intensive

// Extra Isolate(Thread) should be created
// long running operations CPU intensive

// Futures
Future<String> fetchUserData() {
  // Future function return // Future Emit
  // Future only return single data.
  return Future.delayed(const Duration(seconds: 2), () => 'User Data');
}

void main() {
  fetchUserData()
      .then((value) => debugPrint(value))
      .catchError((err) => debugPrint(err));

  Stream<int> str = Stream.fromIterable([1, 2, 5]);
  str
      .listen((event) => debugPrint(event.toString()))
      .onError((error) => debugPrint(error.toString()));
}
