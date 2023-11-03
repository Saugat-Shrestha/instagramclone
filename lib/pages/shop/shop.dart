import 'package:flutter/material.dart';
import 'package:instagramclone/pages/search/widget/exploregrid.dart';
import 'package:instagramclone/pages/shop/widgets/del.dart';
import 'package:instagramclone/pages/shop/widgets/shop_grid.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Shop"),
                  Row(
                    children: [
                      Icon(Icons.shop),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.menu),
                      ),
                    ],
                  )
                ],
              ),
              del(),
            ],
          ),
        ),
      ),
      body: ShopGrid(),
    );
  }
}
