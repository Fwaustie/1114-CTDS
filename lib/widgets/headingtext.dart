import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  const HeadingText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    ));
  }
}