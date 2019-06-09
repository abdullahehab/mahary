import 'package:flutter/material.dart';
import 'package:mahary/firebaseFunction/authFunction.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _secureText = true;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String _email, _password;
  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon:
                      IconButton(icon: Icon(Icons.person), onPressed: null),
                      hintText: "name@gmail.com",
                    ),
                    onChanged: (String val) {
                      _email = val;
                    },
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
                            _secureText ? Icons.visibility : Icons.visibility_off,
                          ),
                        ),
                        hintText: "********",
                      ),
                      obscureText: _secureText),
                ),
              ),
              SizedBox(height: 10.0,),
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
                        signIn(_email, _password, context);
                        print('login taped');
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
            ],
          )),
    );
  }
}
