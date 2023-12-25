import 'package:flutter/material.dart';

class SimpleWidgets extends StatelessWidget {
  const SimpleWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              "Google is the best\nTwitter is the best",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                decoration: TextDecoration.underline,
                // letterSpacing: 5,
                // height: 1.5
              ),
            ),
            const Text(
              "Google သည် အကောင်းဆုံး\nTwitter သည် အကောင်းဆုံးဖြစ်သည်။",
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  height: 1.7),
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Google Bold",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  TextSpan(
                    text: "Twitter Thin",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                "https://i.pinimg.com/originals/06/fa/cb/06facb6ab728c695807c8c48faadc80f.jpg",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Builder(builder: (txtBtnContext) {
              return TextButton(
                onPressed: () {
                  print(txtBtnContext);
                  ScaffoldMessenger.of(txtBtnContext).showSnackBar(
                    const SnackBar(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      backgroundColor: Colors.green,
                      content: Text("Hello World"),
                    ),
                  );
                },
                child: const Text("Click Me"),
              );
            }),
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Hello World Ele"),
                  ));
                },
                child: const Text("Click My Ele Btn"),
              );
            }),
            const Icon(
              Icons.ac_unit,
              color: Colors.deepOrange,
              size: 50,
            ),
          ],
        ),
      ),
    );
  }
}
