import 'package:demo_hello_world/page/home_page.dart';
import 'package:demo_hello_world/page/like_brand_page.dart';
import 'package:demo_hello_world/page/like_product_page.dart';
import 'package:demo_hello_world/widget/hex_to_color.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class LikePage extends StatelessWidget {

  final List<Tab> myTabs = <Tab>[
    Tab(text: '收藏商品'),
    Tab(text: '收藏品牌')
  ];

  final pages = [LikeProductPage(), LikeBrandPage()];

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
        SizedBox(height: 5.0),
        DefaultTabController(
            length: 2, // length of tabs
            initialIndex: 0,
            child: Column(
                children: <Widget>[
              Container(
                child: TabBar(
                  labelColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                  indicatorColor: hexToColor('#ee5984'),
                  tabs: myTabs,
                ),
              ),
              Container(
                  height: 550, //height of TabBarView
                  child: TabBarView(children: <Widget>[ LikeProductPage(),LikeBrandPage()
                  ])
              )
            ])
        ),
      ]),
    );
  }
}