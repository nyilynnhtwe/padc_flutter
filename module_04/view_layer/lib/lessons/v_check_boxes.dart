import 'package:flutter/material.dart';

class CheckBoxView extends StatefulWidget {
  const CheckBoxView({super.key});

  @override
  State<CheckBoxView> createState() => _CheckBoxViewState();
}

class _CheckBoxViewState extends State<CheckBoxView> {
  bool isChecked = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 100),
          const Text("Is your favorite search engine Google?"),
          Row(
            children: [
              Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  }),
              Text(isChecked ? "Google" : "Oh I guessed wrong"),
            ],
          ),
          const Divider(
            color: Colors.red,
            thickness: 5,
          )
        ],
      ),
    );
  }
}
