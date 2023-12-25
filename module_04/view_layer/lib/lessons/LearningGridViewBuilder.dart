import 'package:flutter/material.dart';

class LearningGridViewBuilder extends StatelessWidget {
  const LearningGridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          mainAxisExtent: 200,
        ),
        itemBuilder: (context, index) {
          return Image.network(
            "https://i.pinimg.com/originals/06/fa/cb/06facb6ab728c695807c8c48faadc80f.jpg",
            height: 250,
          );
        },
        itemCount: 100,
      ),
    );
  }
}
