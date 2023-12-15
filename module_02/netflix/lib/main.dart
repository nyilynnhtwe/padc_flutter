import 'package:flutter/material.dart';

void main() {
  runApp(Netflix());
}

class Netflix extends StatelessWidget {
  const Netflix({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            primary: const Color.fromRGBO(193, 62, 50, 1.0)),
        useMaterial3: true,
        fontFamily: "NetflixSans",
      ),
      home: const NetflixLoginPage(),
    );
  }
}

class NetflixLoginPage extends StatelessWidget {
  const NetflixLoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.chevron_left,
          color: Colors.white,
        ),
        title: Image.asset("assets/images/logo.jpg"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Text(
              "Help",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: const Color.fromRGBO(22, 22, 22, 1.0),
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const EmailOrPoneInputView(),
              const SizedBox(
                height: 16.0,
              ),
              const PasswordInputView(),
              const SizedBox(
                height: 32.0,
              ),
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      backgroundColor: const Color.fromRGBO(193, 62, 59, 1.0)),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Forget Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(children: [
                  TextSpan(
                    text:
                        "Sign in is protected by Google reCAPTCHA to ensure you are not a bot.",
                    style: TextStyle(
                      color: Color.fromRGBO(140, 140, 140, 1.0),
                    ),
                  ),
                  TextSpan(
                    text: "Learn more.",
                    style: TextStyle(
                      color: Color.fromRGBO(140, 140, 140, 1.0),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EmailOrPoneInputView extends StatelessWidget {
  const EmailOrPoneInputView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        fillColor: const Color.fromRGBO(51, 51, 51, 1.0),
        filled: true,
        hintText: "Email or Phone",
        hintStyle: const TextStyle(
          color: Color.fromRGBO(148, 148, 148, 1.0),
        ),
      ),
    );
  }
}

class PasswordInputView extends StatefulWidget {
  const PasswordInputView({
    super.key,
  });

  @override
  State<PasswordInputView> createState() => _PasswordInputViewState();
}

class _PasswordInputViewState extends State<PasswordInputView> {
  bool isPasswordHidden = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: const Color.fromRGBO(51, 51, 51, 1.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                obscureText: isPasswordHidden,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  hintText: "Password",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(148, 148, 148, 1.0),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordHidden = !isPasswordHidden;
                });
              },
              child: Text(
                (isPasswordHidden) ? "SHOW" : "HIDE",
                style: const TextStyle(
                  color: Color.fromRGBO(148, 148, 148, 1.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
