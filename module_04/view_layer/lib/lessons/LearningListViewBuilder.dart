import 'package:flutter/material.dart';

class LearningListViewBuilder extends StatelessWidget {
  const LearningListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.network(
                "https://i.pinimg.com/originals/06/fa/cb/06facb6ab728c695807c8c48faadc80f.jpg",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              )
            ],
          );
        },
        itemCount: 100,
      ),
    );
  }
}
