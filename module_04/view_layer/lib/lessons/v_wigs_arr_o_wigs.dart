import 'package:flutter/material.dart';

class WidgetOverWidgets extends StatelessWidget {
  const WidgetOverWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const Text("Row"),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                  child: const Text("Hello1"),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: const Text("Hello2"),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                ),
                child: const Text("Hello1"),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: const Text("Hello2"),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            color: Colors.green,
            child: const Column(
              children: [
                Text("Hello1"),
                Text("Hello2"),
                Text("Hello3"),
                Text("Hello4"),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                const Positioned(
                  top: 100,
                  left: 200,
                  child: Text("Hello15"),
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Hello3"),
                ),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: Text("Hello4"),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
