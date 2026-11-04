import 'package:flutter/material.dart';
import './constants/colors/colorconstants.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: simboticsRed,
          leading: Icon(Icons.menu, color: Colors.white),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Inbox", style: TextStyle(
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
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.inbox_outlined, color: Colors.white), text: "Inbox"),
            ]
          ),
        ),
        body: const SizedBox(),
      ),
    );
  }
}