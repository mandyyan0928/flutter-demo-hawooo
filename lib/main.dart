import 'package:demo_hello_world/page/blog_page.dart';
import 'package:demo_hello_world/page/brand_page.dart';
import 'package:demo_hello_world/page/cart_page.dart';
import 'package:demo_hello_world/page/categories_page.dart';
import 'package:demo_hello_world/page/home_page.dart';
import 'package:demo_hello_world/page/like_page.dart';
import 'package:demo_hello_world/page/login.dart';
import 'package:demo_hello_world/page/product_details.dart';
import 'package:demo_hello_world/page/service_page.dart';
import 'package:demo_hello_world/page/shop_page.dart';
import 'package:demo_hello_world/widget/hex_to_color.dart';
import 'package:demo_hello_world/widget/master_scroll.dart';
import 'package:demo_hello_world/widget/text_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BottomNavigationController(),
    );
  }
}

class BottomNavigationController extends StatefulWidget {
  BottomNavigationController({Key key}) : super(key: key);

  @override
  _BottomNavigationControllerState createState() =>
      _BottomNavigationControllerState();
}

class _BottomNavigationControllerState
    extends State<BottomNavigationController> {
  int _bottomNavigationIndex = 0;
  int _pageIndex = 0;
  var result;
  final _pages = [
    HomePage(),
    CategoriesPage(strVal:'Skin Care'),
    CartPage(),
    ServicePage(),
    LikePage(),
    BrandPage(),
    ShopPage(),
    BlogPage(),
    CategoriesPage(strVal:'Make Up'),
    LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    controller = ScrollController();
    addScrollControllerListener();
    fab = FloatingActionButton(
        child: Icon(Icons.file_upload),
        backgroundColor: hexToColor('#ee5984'),
        onPressed: () {
          controller.animateTo(
            0,
            duration: new Duration(milliseconds: 200),
            curve: Curves.easeOut,
          );
          _displayTopButton();
        });

    print(_pageIndex);

    return Scaffold(
        appBar: hawoooAppBar(),
        body: SingleChildScrollView(
          child: _pages[_pageIndex],
          controller: controller,
        ),
        drawer: Drawer(
            child: Container(
          color: Colors.black,
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: new CircleAvatar(
                  child: Icon(Icons.account_circle),
                  backgroundColor: hexToColor('#ee5984'),
                ),
                title: Text(
                  'Login/Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  _onDrawerClick(9);
                },
              ),
              ListTile(
                leading: new CircleAvatar(
                  child: Icon(Icons.label),
                  backgroundColor: hexToColor('#ee5984'),
                ),
                title: Text(
                  'Brands',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  _onDrawerClick(5);
                },
              ),
              ListTile(
                leading: new CircleAvatar(
                  child: Icon(Icons.assignment_rounded),
                  backgroundColor: hexToColor('#ee5984'),
                ),
                title: Text(
                  'Blogs',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  _onDrawerClick(7);
                },
              ),
              ListTile(
                leading: new CircleAvatar(
                  child: Icon(Icons.auto_fix_high),
                  backgroundColor: hexToColor('#ee5984'),
                ),
                title: Text(
                  'Make Up',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  _onDrawerClick(8);
                },
              ),
              ListTile(
                leading: new CircleAvatar(
                  child: Icon(Icons.assignment_ind_outlined),
                  backgroundColor: hexToColor('#ee5984'),
                ),
                title: Text(
                  'Skin Care',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  _onDrawerClick(1);
                },
              ),
            ],
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.list), label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Service'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Like'),
          ],
          currentIndex: _bottomNavigationIndex,
          fixedColor: hexToColor('#ee5984'),
          unselectedItemColor: Colors.black45,
          onTap: _onItemClick,
        ),
        floatingActionButton: getFab());
  }

  void addScrollControllerListener() {
    print('scroll');

    controller.addListener(() {
      _displayTopButton();
    });
  }

  void _displayTopButton() {
    print(controller.position.userScrollDirection);
    if (controller.position.userScrollDirection == ScrollDirection.forward) {
      setState(() {
        displayTop = false;
      });
    } else {
      setState(() {
        displayTop = true;
      });
    }
  }

  void _onItemClick(int index) {
    setState(() {
      _bottomNavigationIndex = index;
      _pageIndex = index;
    });
  }

  void _onDrawerClick(int index) {
    setState(() {
      _pageIndex = index;
        Navigator.of(context).pop();
    });
  }
}
