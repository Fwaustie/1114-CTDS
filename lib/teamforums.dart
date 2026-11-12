
import 'package:flutter/material.dart';
import './constants/colors/colorconstants.dart';
import './widgets/headingtext.dart';
import './main.dart';
import './inbox.dart';
import './widgets/drawerhead.dart';

class TeamForums extends StatelessWidget {
  const TeamForums({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const Text(
              "Team Forums",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const Text(
              "Team 1114",
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
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
              onTap: () {},
            ),
          ],
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: const HeadingText("Categories"),
          ),

          SizedBox(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              children: [
                _ForumCategory(
                  icon: Icons.groups,
                  title: "General",
                ),
                _ForumCategory(
                  icon: Icons.precision_manufacturing,
                  title: "Manufacturing",
                ),
                _ForumCategory(
                  icon: Icons.memory,
                  title: "Programming",
                ),
                _ForumCategory(
                  icon: Icons.electrical_services,
                  title: "Electrical",
                ),
                _ForumCategory(
                  icon: Icons.design_services,
                  title: "CAD",
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(
              color: simboticsLightGrey,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: const HeadingText("Pinned Discussions"),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                _ForumPost(
                  title: "Competition Preparation",
                  category: "General",
                  author: "Team Supervisor",
                  replies: 12,
                  pinned: true,
                ),
                _ForumPost(
                  title: "Manufacturing Safety Guidelines",
                  category: "Manufacturing",
                  author: "Manufacturing Supervisor",
                  replies: 8,
                  pinned: true,
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(
              color: simboticsLightGrey,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: const HeadingText("Recent Discussions"),
          ),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              children: [
                _ForumPost(
                  title: "Electrical Wiring Documentation",
                  category: "Electrical",
                  author: "Member",
                  replies: 4,
                ),
                _ForumPost(
                  title: "New Shooter Prototype Feedback",
                  category: "CAD",
                  author: "Member",
                  replies: 9,
                ),
                _ForumPost(
                  title: "Upcoming Workshop Schedule",
                  category: "General",
                  author: "Supervisor",
                  replies: 3,
                ),
                _ForumPost(
                  title: "Robot Code Improvements",
                  category: "Programming",
                  author: "Member",
                  replies: 6,
                ),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: simboticsRed,
        foregroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _ForumCategory extends StatelessWidget {
  const _ForumCategory({
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: SizedBox(
        width: 90,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: simboticsRed,
                size: 28,
              ),
              const SizedBox(height: 5),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ForumPost extends StatelessWidget {
  const _ForumPost({
    required this.title,
    required this.category,
    required this.author,
    required this.replies,
    this.pinned = false,
  });

  final String title;
  final String category;
  final String author;
  final int replies;
  final bool pinned;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Icon(
              pinned ? Icons.push_pin : Icons.forum_outlined,
              color: simboticsRed,
              size: 25,
            ),
            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "$category • $author",
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),

            Column(
              children: [
                const Icon(
                  Icons.chat_bubble_outline,
                  size: 16,
                ),
                const SizedBox(height: 3),
                Text(
                  "$replies",
                  style: const TextStyle(
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
