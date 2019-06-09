import 'package:flutter/material.dart';
import 'package:mahary/UI/SignUp.dart';
import 'package:mahary/UI/LoginPage.dart';
import 'package:mahary/UI/Onboarding.dart';
import 'package:mahary/UI/SignUpOrLogin.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: LoginPage(),
));


class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: "test"
            ),
          )
        ],
      ),
    );
  }
}

