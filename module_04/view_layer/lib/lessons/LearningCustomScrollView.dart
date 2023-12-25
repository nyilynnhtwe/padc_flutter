import 'package:flutter/material.dart';

class LearningCustomScrollView extends StatelessWidget {
  const LearningCustomScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
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
              childCount: 100,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Image.network(
                  "https://i.pinimg.com/originals/06/fa/cb/06facb6ab728c695807c8c48faadc80f.jpg",
                  height: 250,
                );
              },
              childCount: 30,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              mainAxisExtent: 200,
            ),
          )
        ],
      )),
    );
  }
}
