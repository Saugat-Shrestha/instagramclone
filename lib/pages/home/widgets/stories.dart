import 'package:flutter/material.dart';
import 'package:instagramclone/constants.dart';

class Stories extends StatelessWidget {
  final String text;
  Stories({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image)),
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.5)),
          ),
          Text(text),
        ],
      ),
    );
  }
}
