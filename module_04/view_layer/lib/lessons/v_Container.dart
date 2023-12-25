import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(color: Colors.red, width: 5),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: const Padding(
                  padding: EdgeInsets.all(20), child: Text("Grenn Box")),
            ),
            const SizedBox(
              width: 200,
              height: 200,
              child: Center(child: Text("Sized Box")),
            )
          ],
        ),
      ),
    );
    ;
  }
}
