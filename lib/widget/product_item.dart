import 'package:demo_hello_world/modal/product.dart';
import 'package:demo_hello_world/page/categories_page.dart';
import 'package:demo_hello_world/page/product_details.dart';
import 'package:flutter/material.dart';
import 'hex_to_color.dart';

// ignore: non_constant_identifier_names
Column ProductItem(Product product) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Image.network(
              product.url,
              height: 100,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              product.name,
              style: TextStyle(fontSize: 12),
            ),
            width: 100,
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Text(
              '\$' + product.price.toString(),
              style: TextStyle(
                  fontSize: 12,
                  color: hexToColor('#ee5984'),
                  fontWeight: FontWeight.w800),
              textDirection: TextDirection.ltr,
            ),
            width: 60,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          ),
          Container(
            child: Text(
              '-\$' + product.discountprice.toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
              textDirection: TextDirection.ltr,
            ),
            color: hexToColor('#ee5984'),
          ),
        ],
      )
    ],
  );
}

var result;

FlatButton favouriteProduct(Product product, BuildContext context) {
  return FlatButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: EdgeInsets.all(0),
      onPressed: () {
        goToProductDetailsPage(context, product);
      },
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image.network(
                    product.url,
                    height: 100,
                  ),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text(
                    product.name   ,
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
          ],
        ),
      ));
}

void goToProductDetailsPage(BuildContext context, Product product) async {
  result = await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProductDetailsPage(product: product,)),
  );
}
