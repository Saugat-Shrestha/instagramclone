import 'package:flutter/material.dart';

class exploregrid extends StatelessWidget {
  const exploregrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.amber,
          ),
        );
      },
      itemCount: 20,
    );
  }
}
