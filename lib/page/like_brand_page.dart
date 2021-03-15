import 'package:demo_hello_world/modal/brand.dart';
import 'package:demo_hello_world/page/home_page.dart';
import 'package:demo_hello_world/page/like_product_page.dart';
import 'package:demo_hello_world/widget/hex_to_color.dart';
import 'package:flutter/material.dart';

class LikeBrandPage extends StatelessWidget {
  final List<Brand> listItems =  getBrands();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView.builder(
          itemCount: listItems.length,
          itemBuilder: (context, index) {
            return Card( child:  ListTile(
              leading: Image.network(listItems[index].url),
              title: Text('${listItems[index].name}',style: TextStyle(fontWeight: FontWeight.w600),),

              subtitle:  subtitleText('Flagship Store'),
              trailing: Icon(Icons.keyboard_arrow_right),
            ));
          },

        ),
      );
  }
}



Widget subtitleText(String text){
  return Container(
    child: Text(
      text,
      style: TextStyle(
        color: hexToColor('#f7b6c9'),
        fontWeight: FontWeight.bold,
        fontSize: 13,
      ),
    ),
    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
    width: 2,
  );

}

