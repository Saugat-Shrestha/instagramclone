import 'package:flutter/material.dart';
import 'package:instagramclone/pages/home_page.dart';

void main() {
  runApp(instagram());
}

class instagram extends StatelessWidget {
  const instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.amber,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: HomePage(),
    );
  }
}
