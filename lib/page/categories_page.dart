import 'package:demo_hello_world/modal/product.dart';
import 'package:demo_hello_world/widget/product_item.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  String strVal;

  CategoriesPage({Key key, this.strVal}) : super(key: key);
  List<Product> listItems = products();

  @override
  Widget build(BuildContext context) {
    if (strVal == 'Make Up') {
      listItems = makeUpProducts();
    } else if (strVal == 'Skin Care') {
      listItems = skinCareProducts();
    }
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text("Categories : " + strVal),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.height / 800,
                shrinkWrap: true,
                children: List.generate(listItems.length, (index) {
                  return Card(
                    child: favouriteProduct(listItems[index], context),
                  );
                }),
              ),
            )
          ],
        )
      ],
    );
  }
}
// class CategoriesPage extends StatelessWidget {
//   final strVal;
//
//   CategoriesPage({Key key, this.strVal}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//       return Center(
//        child: Text("Categories"),
//      );
//   }
// }
