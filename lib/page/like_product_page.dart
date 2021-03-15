import 'package:demo_hello_world/modal/brand.dart';
import 'package:demo_hello_world/modal/product.dart';
import 'package:demo_hello_world/widget/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LikeProductPage extends StatefulWidget {
  @override
  _LikeProductPageState createState() => _LikeProductPageState();
}

class _LikeProductPageState extends State<LikeProductPage> {
  final List<Product> listItems =  products();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.height / 800,
      shrinkWrap: true,
      children:  List.generate(listItems.length, (index) {
        return Card(child:
        // Card(
        //   child:
        favouriteProduct(listItems[index], context),

          // ),
        );
      }),
    );
  }
}

/*
class LikeProductPage extends StatelessWidget {
  final List<Product> listItems =  products();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children:  List.generate(listItems.length, (index) {
        return Card(
          child:favouriteProduct(listItems[index], context),
        );
      }),
    );
  }
}
*/
