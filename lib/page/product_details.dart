import 'package:demo_hello_world/modal/product.dart';
import 'package:demo_hello_world/widget/hex_to_color.dart';
import 'package:demo_hello_world/widget/text_label.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  var product = new Product();

  ProductDetailsPage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: hawoooAppBar(),
        body: Column(
          children: [
            Row(
              children: [Expanded(child: Image.network(product.url))],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    product.name,
                    style: TextStyle(fontSize: 20),
                  ),
                  padding: EdgeInsets.fromLTRB(5, 30, 0, 30)
                )
              ],
            ),
            Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Column(
                        children: [Text('\$'+product.price.toString(),
                            style: TextStyle(fontSize: 30, color: hexToColor('#ee5984'), fontWeight: FontWeight.w800))],
                      ),
                      Column(
                        children: [
                          Container(child:
                              Text('-\$'+product.discountprice.toString(),
                                  style:TextStyle(fontSize: 20, color: Colors.white)),
                            margin: EdgeInsets.fromLTRB(30, 0, 0,  0),color: hexToColor('#ee5984'),
                          ),

                        ],
                      )
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
    color: hexToColor('#fdebf0'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: RaisedButton(
                    child: Text('Back', style: TextStyle(color: Colors.white),),
                    onPressed: () {
                      Navigator.pop(context, product.name);
                    },
                    color: hexToColor('#ee5984'),
                  ),
                  margin:EdgeInsets.fromLTRB(0, 80, 0, 0),

                ),
              ],
            )
          ],
        )

        );
  }
}
//
// children: <Widget>[
// RaisedButton(
// child: Text('跳到 B 頁'),
// onPressed: () {
// goToBPage(context);
// },
// ),
// Text('返回值：$result')
// ],
