import 'package:flutter/material.dart';
import 'package:instagramclone/pages/home/home.dart';
import 'package:instagramclone/pages/profile/profile.dart';
import 'package:instagramclone/pages/reels/reels.dart';
import 'package:instagramclone/pages/search/search.dart';
import 'package:instagramclone/pages/shop/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedBar = 0;

  void _barSelected(int index) {
    setState(() {
      _selectedBar = index;
    });
  }

  final List<Widget> _children = [
    Home(),
    Search(),
    Center(child: Text("hello")),
    Shop(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedBar],
      bottomNavigationBar: Theme(
        data: ThemeData(
            splashFactory: NoSplash.splashFactory,
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedBar,
            onTap: _barSelected,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_call), label: "Reels"),
              BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ]),
      ),
    );
  }
}
