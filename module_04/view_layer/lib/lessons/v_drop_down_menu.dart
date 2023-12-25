import 'package:flutter/material.dart';

class DropDownMenuView extends StatefulWidget {
  const DropDownMenuView({super.key});

  @override
  State<DropDownMenuView> createState() => _DropDownMenuViewState();
}

class _DropDownMenuViewState extends State<DropDownMenuView> {
  List<String> dropDownItems = ["One", "Two", "Three"];
  String selectedItem = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedItem = dropDownItems[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Drop Down Menu"),
            DropdownButton(
                value: selectedItem,
                items: dropDownItems
                    .map((dropDownItem) => DropdownMenuItem(
                          value: dropDownItem,
                          child: Text(dropDownItem),
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    selectedItem = val ?? "";
                  });
                }),
          ],
        ),
      ),
    );
  }
}
