import 'package:flutter/material.dart';
import './constants/colors/colorconstants.dart';
import './widgets/defaultcard.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.account_tree_outlined, color: Colors.white), text: "Branch"),
              Tab(icon: Icon(Icons.language_outlined, color: Colors.white), text: "Geode"),
            ]
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text("Your Tasks", style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                  )),
                ),
              ]
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: DefaultCard(
                      amount: 8, item: "Assigned Tasks",
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: DefaultCard(
                      amount: 4, item: "Overdue Tasks",
                    ),
                  ),
                ),
              ]
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: DefaultCard(
                      amount: 10, item: "Completed Tasks",
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: DefaultCard(
                      amount: 8, item: "Incomplete Tasks",
                    ),
                  ),
                ),
              ]
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SearchBar(
                hintText: "Search for Tasks..." 
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                color: simboticsLightGrey,
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 8,
                separatorBuilder: (context, index) =>
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Divider(
                      color: simboticsLightGrey
                    ),
                  ),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: const Text("stuff"),
                  );
                }
              )
            ),
          ]
        ),
      ),
    );
  }
}