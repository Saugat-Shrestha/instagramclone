import 'package:flutter/material.dart';
import 'package:instagramclone/pages/home/widgets/stories.dart';
import 'package:instagramclone/pages/profile/widgets/profileTab2.dart';
import 'package:instagramclone/pages/profile/widgets/profiletab1.dart';
import 'package:instagramclone/pages/profile/widgets/profiletab3.dart';
import 'package:instagramclone/pages/profile/widgets/profiletab4.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[500],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Saugathor",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Maktub",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Edit Profile",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Share profile",
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Stories(text: "Story"),
                  Stories(text: "Story"),
                  Stories(text: "Story"),
                  Stories(text: "Story"),
                ],
              ),
            ),
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(Icons.shop),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                profiletab1(),
                profiletab2(),
                profiletab3(),
                profiletab4(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
