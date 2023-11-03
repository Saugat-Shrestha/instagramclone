import 'package:flutter/material.dart';
import 'package:instagramclone/pages/home/widgets/post.dart';
import 'package:instagramclone/pages/home/widgets/stories.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List people = ["Saugat", "Sumit", "kimara", "adarshA", "hello", "okay"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Instagram"),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.add),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.favorite),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.share),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return Stories(text: people[index]);
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return Post(
                    text: people[index],
                  );
                },
              ),
            ),
          ],
        ));
  }
}
