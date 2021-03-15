import 'package:demo_hello_world/modal/product.dart';
import 'package:demo_hello_world/widget/hex_to_color.dart';
import 'package:demo_hello_world/widget/product_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
          _banner(),
          _icons(),
          _productTitle('Sale', 'Hot Deals'),
          _productList(),
          _productList2(),
          _productTitle('Sale', 'Most Popular'),
          _productList(),
          _productList2(),
        ]));
  }

  Row _icons() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeadIcon('assets/images/icon_flagship_stores.png', 'FlagShip\nStore'),
            HeadIcon('assets/images/icon_events_overview.png', 'Event\nOverview'),
            HeadIcon('assets/images/icon_hacoins_reward.png', 'Coins\nReward'),
            HeadIcon('assets/images/icon_blog.png', 'Blogs'),
          ],
        );
  }

  Row _banner() {
    return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Image.asset('assets/images/banner.png', fit: BoxFit.fill),
            )
          ],
        );
  }
}

Row _productTitle(String firsttitle, String secondtitle) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Column(
        children: [
          _salesLabel(firsttitle)
        ],
      ),
      Column(
        children: [
          _labelPromo(secondtitle)
        ],
      ),
    ],
  );
}
Row _productList() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ProductItem(products()[0]),
      ProductItem(products()[1]),
      ProductItem(products()[2]),
    ],
  );
}
Row _productList2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ProductItem(products()[3]),
      ProductItem(products()[0]),
      ProductItem(products()[1]),
    ],
  );
}

// ignore: non_constant_identifier_names
Column HeadIcon(String img, String text) {
  return Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 50,
            height: 100,
            child: Image.asset(img),
          )
        ],
      ),
      Row(
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
          )
        ],
      )
    ],
  );
}
Widget _salesLabel(String text){
  return Container(
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 13,
      ),
    ),
    color: hexToColor('#ee5984'),
    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
    margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
  );

}



Widget _labelPromo(String text){
  return Container(
    child: Text(
      text,
      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
    ),
    margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
  );

}

