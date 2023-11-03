import 'package:flutter/material.dart';

class del extends StatelessWidget {
  const del({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: EdgeInsets.all(8),
        color: Colors.grey[300],
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.grey[500],
            ),
            Text(
              "Search",
              style: TextStyle(color: Colors.grey[500]),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
