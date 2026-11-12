import 'package:flutter/material.dart';
import './widgets/defaultcard.dart';
import './constants/colors/colorconstants.dart';
import './widgets/headingtext.dart';
import './inbox.dart';
import './widgets/drawerhead.dart';
import 'widgets/dashboardprogressbar.dart';
import './teamforums.dart';

void main() {
  runApp(App());
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
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
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
        drawer: Builder(
          builder: (context) => Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                SimboticsDrawerHead(),
                ListTile(
                  leading: const Icon(Icons.dashboard),
                  title: const Text("Dashboard"),
                ),
                ListTile(
                  leading: const Icon(Icons.inbox_outlined),
                  title: const Text("Inbox"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Inbox(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.forum_outlined),
                  title: const Text("Team Forums"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TeamForums(),
                      ),
                    );
                  },
                ),
              ],
            ),
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
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: DefaultCard(
                      amount: 10002,
                      item: "Active Tasks",
                      amountFontSize: 30,
                      itemFontSize: 12.5,
                      minHeightP: 90,
                    ),
                  ),
                  SizedBox(
                    width: 10
                  ),
                  Expanded(
                    child: DefaultCard(
                      amount: 0,
                      item: "Tasks Completed",
                      amountFontSize: 30,
                      itemFontSize: 12.5,
                      minHeightP: 90,
                    ),
                  ),
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: const Row(
                children: [
                  Expanded(
                    child: DefaultCard(
                      amount: 3,
                      item: "Active Members",
                      amountFontSize: 30,
                      itemFontSize: 12.5,
                      minHeightP: 90,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: DefaultCard(
                      amount: 39,
                      item: "Total Members",
                      amountFontSize: 30,
                      itemFontSize: 12.5,
                      minHeightP: 90,
                    ),
                  ),
                ]
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Divider(
                color: simboticsLightGrey,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                children: [
                  ProgressBar(
                    branch: "Electrical",
                    assignedtaskamt: 1,
                    finishedtaskamt: 0,
                    cryamt: 0,
                    delayedtaskamt: 0,
                    activemembersinbranch: 1,
                    widthP: 200,
                    valueP: 0.68479,
                    minHeightP: 10.0,
                    colorP: simboticsRed,
                  ),
                  ProgressBar(
                    branch: "Manufacturing",
                    assignedtaskamt: 2,
                    finishedtaskamt: 0,
                    cryamt: 1,
                    delayedtaskamt: 0,
                    activemembersinbranch: 1,
                    widthP: 200,
                    valueP: 0.17232,
                    minHeightP: 10.0,
                    colorP: simboticsRed,
                  ),
                  ProgressBar(
                    branch: "Programming",
                    assignedtaskamt: 9999,
                    finishedtaskamt: 0,
                    cryamt: 9999,
                    delayedtaskamt: 9999,
                    activemembersinbranch: 1,
                    widthP: 200,
                    valueP: 0.0,
                    minHeightP: 10.0,
                    colorP: simboticsRed,
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