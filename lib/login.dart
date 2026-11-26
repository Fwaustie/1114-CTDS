import 'package:flutter/material.dart';
import './widgets/loginheadingtext.dart';
import 'main.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              'lib/assets/images/rubellitelogo.png',
              height: 72,
              fit: BoxFit.contain,
            ),
            LoginHeadingText("Welcome Back!"),
            const Text("Rubellite Software v1.0.0.15"),
            SizedBox(
              width: 250,
              child: Column(
                children: [
                  SizedBox(height: 50),
                  const TextField(
                    cursorColor: Color(0xFF9c2875),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      floatingLabelStyle: TextStyle(
                        color: Color(0xFF9c2875),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF9C2875),
                          width: 2,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    cursorColor: Color(0xFF9c2875),
                    decoration: InputDecoration(
                      labelText: "Password",
                      floatingLabelStyle: TextStyle(
                        color: Color(0xFF9C2875),
                      ),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF9C2875),
                          width: 2.0,
                        ),
                      ),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 110,
                        child: FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: const Color(0xFF9C2875),
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) => const App(),
                              ),
                            );
                          },
                          child: const Text("Log In"),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 110,
                        child: FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: const Color(0xFFF5EAF1),
                            foregroundColor: const Color(0xFF9C2875),
                          ),
                          onPressed: () {},
                          child: const Text("Register"),
                        ),
                      ),
                    ]
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: SizedBox(
                  width: 300,
                  child: Text(
                    "Yesterday was preparation for today, is preparation for tomorrow.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}