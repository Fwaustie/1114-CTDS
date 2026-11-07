import 'package:flutter/material.dart';
import '../constants/colors/colorconstants.dart';

class SimboticsDrawerHead extends StatelessWidget {
  const SimboticsDrawerHead({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
        color: simboticsRed,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Menu", style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            )),
          const Text("Team 1114", style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
            )),
          ]
        ),
      );
  }
}