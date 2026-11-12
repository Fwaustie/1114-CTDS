import 'package:flutter/material.dart';
import './constants/colors/colorconstants.dart';
import './widgets/defaultcard.dart';
import './main.dart';
import './widgets/drawerhead.dart';
import './constants/test/premadeinboxtasklist.dart';
import './teamforums.dart';

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
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
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
            ],
          ),
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.account_tree_outlined, color: Colors.white), text: "Branch"),
              Tab(icon: Icon(Icons.language_outlined, color: Colors.white), text: "Geode"),
            ],
          ),
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SimboticsDrawerHead(),
              ListTile(
                leading: const Icon(Icons.dashboard),
                title: const Text("Dashboard"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const App(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.inbox_outlined),
                title: const Text("Inbox"),
                onTap: () {
                  Navigator.pop(context);
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

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text("Your Tasks", style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                  )),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: DefaultCard(
                      amount: 22,
                      item: "Assigned Tasks",
                      amountFontSize: 30,
                      itemFontSize: 12.5,
                      minHeightP: 90,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: DefaultCard(
                      amount: 4,
                      item: "Overdue Tasks",
                      amountFontSize: 30,
                      itemFontSize: 12.5,
                      minHeightP: 90,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: DefaultCard(
                      amount: 10,
                      item: "Completed Tasks",
                      amountFontSize: 30,
                      itemFontSize: 12.5,
                      minHeightP: 90,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: DefaultCard(
                      amount: 8,
                      item: "Incomplete Tasks",
                      amountFontSize: 30,
                      itemFontSize: 12.5,
                      minHeightP: 90,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SearchBar(
                      hintText: "Search for Tasks...",
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(color: simboticsLightGrey),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: testTasks.length,
                separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Divider(color: simboticsLightGrey),
                ),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.check_box_outline_blank_sharp, color: simboticsRed),
                    title: Text(
                      testTasks[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: const Icon(Icons.chevron_right),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
