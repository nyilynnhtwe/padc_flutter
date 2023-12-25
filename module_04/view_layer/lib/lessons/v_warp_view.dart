import 'package:flutter/material.dart';

class WrapView extends StatelessWidget {
  const WrapView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Wrap(
          direction: Axis.vertical,
          // main axis spacing
          spacing: 20,
          // cross axis spacing
          runSpacing: 30,
          // alignment: WrapAlignment.center,
          children: [
            Chip(
              label: Text("Hello1"),
              backgroundColor: Colors.green,
            ),
            Chip(
              label: Text("Hello2"),
              backgroundColor: Colors.red,
              avatar: Icon(Icons.star),
            ),
            Chip(
              label: Text("Hello3"),
              backgroundColor: Colors.blue,
            ),
            Chip(
              label: Text("Hello3"),
              backgroundColor: Colors.blue,
            ),
            Chip(
              label: Text("Hello3"),
              backgroundColor: Colors.blue,
            ),
            Chip(
              label: Text("Hello3"),
              backgroundColor: Colors.blue,
            ),
            Chip(
              label: Text("Hello3"),
              backgroundColor: Colors.blue,
            ),
            Chip(
              label: Text("Hello1"),
              backgroundColor: Colors.green,
            ),
            Chip(
              label: Text("Hello2"),
              backgroundColor: Colors.red,
              avatar: Icon(Icons.star),
            ),
            Chip(
              label: Text("Hello3"),
              backgroundColor: Colors.blue,
            ),
            Chip(
              label: Text("Hello3"),
              backgroundColor: Colors.blue,
            ),
            Chip(
              label: Text("Hello3"),
              backgroundColor: Colors.blue,
            ),
            Chip(
              label: Text("Hello3"),
              backgroundColor: Colors.blue,
            ),
            Chip(
              label: Text("Hello3"),
              backgroundColor: Colors.blue,
            ),
                      Chip(
              label: Text("Hello1"),
              backgroundColor: Colors.green,
            ),
            Chip(
              label: Text("Hello2"),
              backgroundColor: Colors.red,
                          avatar: Icon(Icons.star),
      
            ),
            Chip(
              label: Text("Hello3"),
              backgroundColor: Colors.blue,
            ),
                      Chip(
              label: Text("Hello3"),
              backgroundColor: Colors.blue,
            ),
                      Chip(
              label: Text("Hello3"),
              backgroundColor: Colors.blue,
            ),
                      Chip(
              label: Text("Hello3"),
              backgroundColor: Colors.blue,
            ),
                      Chip(
              label: Text("Hello3"),
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
