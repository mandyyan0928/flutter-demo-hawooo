import 'package:demo_hello_world/modal/product.dart';
import 'package:demo_hello_world/widget/hex_to_color.dart';
import 'package:demo_hello_world/widget/master_scroll.dart';
import 'package:demo_hello_world/widget/product_item.dart';
import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    print('widget loaded');
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: GridView.count(
      crossAxisCount: 2,
      children: new List.generate(50, (index) {
        return new Center(
          child: new Text(
            '測試資料 $index',
          ),
        );
      }),
          physics: NeverScrollableScrollPhysics(),
    )
    );

  }


}