import 'package:flutter/material.dart';

class GridViewCustomWidget extends StatelessWidget {
  const GridViewCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            mainAxisExtent: 200,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              return Image.network(
                "https://i.pinimg.com/originals/06/fa/cb/06facb6ab728c695807c8c48faadc80f.jpg",
                height: 250,
                fit: BoxFit.cover,
              );
            },
            childCount: 30,
          ),
        ),
      ),
    );
  }
}
