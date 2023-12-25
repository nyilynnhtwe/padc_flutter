import 'package:flutter/material.dart';

class RadioBtnsView extends StatefulWidget {
  const RadioBtnsView({super.key});

  @override
  State<RadioBtnsView> createState() => _RadioBtnsViewState();
}

class _RadioBtnsViewState extends State<RadioBtnsView> {
  List<String> radioItems = ["first", "second", "third"];
  String selectedItem = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedItem = radioItems[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Radio Buttons"),
            Column(
              children: radioItems
                  .map((radioItem) => Row(
                        children: [
                          Radio(
                            groupValue: selectedItem,
                            value: radioItem,
                            onChanged: (String? value) {
                              setState(() {
                                selectedItem = value ?? "";
                              });
                            },
                          ),
                          Text(radioItem)
                        ],
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
