import 'package:flutter/material.dart';
import 'package:mahary/firebaseFunction/authFunction.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _secureText = true;

  String _email, _password;
  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
            constraints: BoxConstraints.expand(), // what ??
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 249, 252, 255),
            ),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0, top: 40.0),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'images/logo.png',
                          width: 37,
                          height: 40,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Mahary",
                          style: TextStyle(
                            color: Color.fromARGB(255, 39, 73, 146),
                            fontSize: 13,
                            letterSpacing: 2,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Color.fromARGB(255, 39, 73, 146), fontSize: 36),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 255,
                  child: Image.asset(
                    'images/test.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: TextField(
                      onChanged: (String val) {
                        _email = val;
                      },
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: Icon(Icons.person), onPressed: null),
                        hintText: "name@gmail.com",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: TextField(
                      onChanged: (String val) {
                        _password = val;
                      },
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: showHide,
                            icon: Icon(
                              _secureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                          hintText: "********",
                        ),
                        obscureText: _secureText),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 50.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 239, 110, 69),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: FlatButton(
                        onPressed: () {
                          print(_email);
                          print(_password);
                          print('login taped');
                          logIn(_email, _password, context);
                        },
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20.0),
                          textAlign: TextAlign.center,
                        )),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: InkWell(
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Color.fromARGB(255, 39, 73, 146),
                          fontSize: 16.0),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      print('forgot password taped!');
                    },
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Opacity(
                            opacity: 0.6,
                            child: Text(
                              "New user?",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 39, 73, 146),
                                  fontSize: 16.0),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          InkWell(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromARGB(255, 39, 73, 146)),
                            ),
                            onTap: () {
                              print('sign Up taped!');
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ]),
            ))
      ]),
    );
  }
}
