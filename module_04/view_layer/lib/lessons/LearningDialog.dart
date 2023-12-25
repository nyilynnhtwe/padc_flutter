import 'package:flutter/material.dart';

class LearningDialog extends StatefulWidget {
  const LearningDialog({super.key});

  @override
  State<LearningDialog> createState() => _LearningDialogState();
}

class _LearningDialogState extends State<LearningDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Builder(
                builder: (eleBuilderContext) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {
                      showAlertDigalog(eleBuilderContext);
                    },
                    child: const Text(
                      "Click Me to pop up a dialog",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
              Builder(
                builder: (eleBuilderContext) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      showCustomAlertDialog(eleBuilderContext);
                    },
                    child: const Text(
                      "Click Me to pop up a custom dialog",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
              Builder(
                builder: (eleBuilderContext) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      showLoadingDialog(eleBuilderContext);
                    },
                    child: const Text(
                      "Click Me to pop up a loading dialog",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showAlertDigalog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Order Confirmed"),
          content: const Text("A user ordered recently."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }

  void showCustomAlertDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
                height: 200,
                width: 500,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 43, 83, 52),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text(
                        "This is a custom dialog",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Image.network(
                        "https://i.pinimg.com/originals/06/fa/cb/06facb6ab728c695807c8c48faadc80f.jpg",
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "Close",
                          style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          );
        });
  }

  void showLoadingDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return const Dialog(
            child: SizedBox(
              height: 80,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CircularProgressIndicator(),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Loading data from API..."),
                ],
              ),
            ),
          );
        });
  }
}
