import 'dart:ffi';

import 'package:flutter/material.dart';

class BtnNav extends StatefulWidget {
  const BtnNav({super.key});

  @override
  State<BtnNav> createState() => _BtnNavState();
}

class _BtnNavState extends State<BtnNav> {
  int currentPageIndex = 0;
  var bodyText = ["start", "menu", "sport", "dota2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(bodyText[currentPageIndex]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.start),
            label: "start",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "menu",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.sports),
            label: "sport",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/search_icon.png",
              width: 27,
              height: 27,
              color: Colors.green,
            ),
            activeIcon: Image.asset(
              "assets/icons/search_icon.png",
              width: 30,
              height: 30,
              color: Colors.red,
            ),
            label: "dota2",
          ),
        ],
        currentIndex: currentPageIndex,
        selectedItemColor: Colors.red,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.green,
        onTap: (val) {
          setState(() {
            currentPageIndex = val;
          });
        },
      ),
    );
  }
}
