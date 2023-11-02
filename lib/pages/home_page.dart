import 'package:flutter/material.dart';
import 'package:instagramclone/pages/top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TopBar(),
        ],
      ),
    );
  }
}