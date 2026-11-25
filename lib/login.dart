import 'package:flutter/material.dart';
import './widgets/loginheadingtext.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            LoginHeadingText("Welcome Back!"),
            const Text("Rubellite Software v1.0.0.15"),
            SizedBox(
              width: 200,
              child: Column(
                children: [
                  SizedBox(height: 100),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF9C2875), // Rubellite pink
                          width: 2,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}