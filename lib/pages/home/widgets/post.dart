import 'package:flutter/material.dart';
import 'package:instagramclone/constants.dart';

class Post extends StatelessWidget {
  final String text;
  Post({required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage(image)),
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(text),
                ],
              ),
              Icon(Icons.menu),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 400,
            width: 500,
          
            child: Image.asset(
              image,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(Icons.chat_bubble),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark_outline),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Text("Liked by "),
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("and "),
              Text(
                "others ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 8, bottom: 10),
          child: RichText(
            text: TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: "Saugathor",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text:
                      " jkhadkjash dhas kdh askldhlka sdhl ashdl ash dlh asld ash dl ashdlh as"),
            ]),
          ),
        ),
      ],
    );
  }
}
