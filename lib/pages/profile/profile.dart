import 'package:flutter/material.dart';
import 'package:instagramclone/pages/profile/widgets/toplayer.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Saugthor"),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(Icons.arrow_downward_rounded),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.add),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.menu),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[500],
                ),
              ),
              Column(
                children: [
                  Text(
                    "225",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Post"),
                ],
              ),
              Column(
                children: [
                  Text(
                    "225",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Follower"),
                ],
              ),
              Column(
                children: [
                  Text(
                    "225",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Following"),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
