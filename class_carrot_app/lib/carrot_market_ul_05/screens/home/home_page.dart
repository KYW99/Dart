import 'package:class_carrot_app/carrot_market_ul_05/screens/components/appbar_preferred_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'components/product_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        title: Row(
          children: [
            Text('좌동'),
            const SizedBox(width: 4.0),
            Icon(
              Icons.keyboard_arrow_down,
              size: 25,
            ),
          ],
        ),
        bottom: appBarBottomLine(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.list),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.bell),
          ),
        ],
      ),
      // body: ListView.separated(itemBuilder: itemBuilder, separatorBuilder: separatorBuilder, itemCount: itemCount),
      // Listview.separated
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ProductItem(product: productList[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 1,
            color: Colors.grey,
            indent: 15,
            endIndent: 15,
          );
        },
        itemCount: productList.length,
        // children: [
        //   ProductItem(product: productList[0]),
        // ],
      ),
      // child: Text('HomePage'),
    );
  }
}
