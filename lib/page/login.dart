import 'package:demo_hello_world/page/blog_page.dart';
import 'package:demo_hello_world/page/sign_up.dart';
import 'package:demo_hello_world/widget/hex_to_color.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Text(
            'Login',
            style: TextStyle(fontSize: 20),
          ),
          margin: EdgeInsets.all(20),
        ),
        Container(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Username',
              prefixIcon: Icon(Icons.email),
            ),
          ),
          margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
        ),
        Container(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Password',
              prefixIcon: Icon(Icons.lock),
            ),
          ),
          margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
        ),
        RaisedButton(
          child: Text('Login', style: TextStyle(color: Colors.white)),
          onPressed: () {
            print('login');
          },
          color: hexToColor('#ee5984'),
        ),
        Container(
        child:Row(
          children: [
            Text('New Member?'),
            FlatButton(
                child: Text(
                  'Sign up here',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {
                  Navigator.push(context,
                      //MaterialPageRoute(builder: (context) => return BlogPage()));
                  MaterialPageRoute(builder: (BuildContext context) { return SignUpPage(); }));
                })
          ],),margin: EdgeInsets.fromLTRB(90, 0, 50, 20),
        )
      ],
    );
  }
}
