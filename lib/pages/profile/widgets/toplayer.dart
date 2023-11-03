import 'package:flutter/material.dart';

class TopLayer extends StatelessWidget {
  const TopLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[500],
          ),
        ),
        Row(
          children: [
            Text(
              "225",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Post"),
          ],
        ),
      ],
    );
  }
}
