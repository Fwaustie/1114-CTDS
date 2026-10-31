import 'package:flutter/material.dart';
import './widgets/menucard.dart';
import './constants/colors/colorconstants.dart';
import './widgets/headingtext.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: simboticsRed,
          leading: Icon(Icons.menu),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Dashboard", style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              )),
              Text("Team 1114", style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                color: simboticsWhite,
              )),
            ]
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: const HeadingText("Group Overview"),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: const Row(
                children: [
                  Expanded(
                    child: MenuCard(amount: 12, item: "Active Tasks"),
                  ),
                  SizedBox(
                    width: 10
                  ),
                  Expanded(
                    child: MenuCard(amount: 8, item: "Tasks Completed"),
                  ),
                ]
              ),
            ),
          ]
        ),
      ),
    );
  }
}