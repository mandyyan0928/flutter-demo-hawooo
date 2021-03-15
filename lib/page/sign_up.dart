import 'package:demo_hello_world/database/data/member.dart';
import 'package:demo_hello_world/database/manager/member_manager.dart';
import 'package:demo_hello_world/widget/hex_to_color.dart';
import 'package:demo_hello_world/widget/text_label.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: hawoooAppBar(),
        body: SingleChildScrollView(child: SignUpForm()));
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final userNameController = TextEditingController();
  final mobileController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    userNameController.dispose();
    mobileController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Text(
            'Sign Up',
            style: TextStyle(fontSize: 20),
          ),
          margin: EdgeInsets.all(20),
        ),
        Container(
          child: TextField(
            controller: userNameController,
            decoration: InputDecoration(
              hintText: 'Username',
              prefixIcon: Icon(Icons.account_circle),
            ),
          ),
          margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
        ),
        Container(
          child: TextField(
            controller: mobileController,
            decoration: InputDecoration(
              hintText: 'Mobile',
              prefixIcon: Icon(Icons.phone),
            ),
          ),
          margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
        ),
        Container(
          child: TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              prefixIcon: Icon(Icons.lock),
            ),
          ),
          margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
        ),
        Container(
          child: TextField(
            controller: confirmPasswordController,
            decoration: InputDecoration(
              hintText: 'Confirm Password',
              prefixIcon: Icon(Icons.lock),
            ),
          ),
          margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
        ),
        RaisedButton(
          child: Text('Sign Up', style: TextStyle(color: Colors.white)),
          onPressed: () {
            var member = Member();
            member.username = userNameController.text;
            member.password = passwordController.text;
            member.mobile = mobileController.text;
            var memberManager= MemberManager.instance;
            memberManager.insert(member);
          },
          color: hexToColor('#ee5984'),
        ),
      ],
    );
  }
}
