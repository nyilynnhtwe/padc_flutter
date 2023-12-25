import 'package:flutter/material.dart';

class ListViewCustomWidget extends StatelessWidget {
  const ListViewCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.generate(
          10,
          (index) => 
          Column(
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
          ),
        ),
      ),
    );
  }
}
