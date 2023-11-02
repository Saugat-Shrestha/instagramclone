import 'package:flutter/material.dart';
import 'package:instagramclone/pages/home/home.dart';

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
    Center(child: Text("s")),
    Center(child: Text("hello")),
    Center(child: Text("hello")),
    Center(child: Text("hello")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedBar],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedBar,
          onTap: _barSelected,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: "Reels"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
