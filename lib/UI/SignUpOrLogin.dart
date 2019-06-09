import 'package:flutter/material.dart';
import 'package:mahary/UI/LoginPage.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            constraints: BoxConstraints.expand(), // what ??
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 249, 252, 255),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Spacer(),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0),
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
                Spacer(),
                Container(
                  height: 220,
//                  width: double.infinity,
                  child: Image.asset(
                    'images/test.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Spacer(),
                Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Hello!",
                      style: TextStyle(
                          color: Color.fromARGB(255, 39, 73, 146),
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                      textAlign: TextAlign.center,
                    )),
                SizedBox(
                  height: 10.0,
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: Opacity(
                      opacity: 0.4,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 20,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 50.0),
                              child: Text(
                                "We make your free time in the opportunity to be in the money",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 39, 73, 146),
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
//                  child: Container(
//                    height: 70.0,
//                    child: Text(
//                      "We make your free time in the opportunity to be in the money",
//                      style: TextStyle(
//                          color: Color.fromARGB(255, 39, 73, 146),
//                          fontSize: 15.0,
//                          fontWeight: FontWeight.bold,
//                          letterSpacing: 1),
//                      textAlign: TextAlign.center,
//                    ),
//                  ),
                    )),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 50.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 39, 73, 146),
                            borderRadius: BorderRadius.all(Radius.circular(25))),
                        child: FlatButton(
                            onPressed: () {
                              print('login taped');
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20.0),
                              textAlign: TextAlign.center,
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: 50.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 39, 73, 146),
                                  width: 3.0),
                              borderRadius: BorderRadius.all(Radius.circular(25))),
                          child: new OutlineButton(
                            child: new Text(
                              "Sign in",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 39, 73, 146),
                                  fontSize: 20.0),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                            },
                            borderSide: BorderSide(),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(
                                30.0,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
                Spacer(),
                Align(
                  alignment: Alignment.topCenter,
                  child: Opacity(
                    opacity: 0.4,
                    child: Text(
                      "Or via social media",
                      style: TextStyle(
                          color: Color.fromARGB(255, 39, 73, 146), fontSize: 18.0, letterSpacing: 1),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
//            Spacer(),
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 39, 73, 146).withOpacity(0.1), width: 3.0),
                              borderRadius: BorderRadius.all(Radius.circular(50))),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/twitter-icon.png'),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 9.0,),
                      Center(
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 39, 73, 146).withOpacity(0.1), width: 3.0),
                              borderRadius: BorderRadius.all(Radius.circular(50))),
                          child:
                          CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('images/linkedin-icon.png'),
                          ),
                        ),
                      ),
                      SizedBox(width: 9.0,),
                      Center(
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 39, 73, 146).withOpacity(0.1), width: 3.0),
                              borderRadius: BorderRadius.all(Radius.circular(50))),
                          child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('images/google-icon.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
      )
    );
  }
}
