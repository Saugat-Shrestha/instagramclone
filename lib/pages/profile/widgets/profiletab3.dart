import 'package:flutter/material.dart';

import '../../../constants.dart';

class profiletab3 extends StatelessWidget {
  const profiletab3({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            child: Image.asset(image),
            //  height: 10,
            //  width: 10,
            //decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          ),
        );
      },
    );
  }
}
