import 'package:flutter/material.dart';

class LoginHeadingText extends StatelessWidget {
  const LoginHeadingText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.w900,
    ));
  }
}