import 'package:flutter/material.dart';

class SingleChildSViewCustom extends StatelessWidget {
  const SingleChildSViewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: 
      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                  child: const Center(child: Text("box")),
                ),
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                  child: const Center(child: Text("box")),
                ),
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                  child: const Center(child: Text("box")),
                ),
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                  child: const Center(child: Text("box")),
                ),
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                  child: const Center(child: Text("box")),
                ),
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                  child: const Center(child: Text("box")),
                ),
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                  child: const Center(child: Text("box")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}