import 'package:flutter/material.dart';
import './signup2.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void moveToLogin() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Signup2()));
  }

  final String facebooksvg = 'img/facebook.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black45,
        body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 60.0),
            child: Text(
              "Welcome Back !",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0, bottom: 20.0),
            child: Text(
              "Login with",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 0.0,
                ),
                child: RaisedButton(
                    color: Color.fromARGB(0xff, 59, 89, 152),
                    onPressed: () => {},
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: SvgPicture.asset(
                      facebooksvg,
                      height: 30,
                      width: 30,
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                    color: Colors.white,
                    onPressed: () => {},
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: SvgPicture.asset(
                      'img/google.svg',
                      height: 30,
                      width: 30,
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                    color: Color.fromARGB(0xff, 0, 172, 237),
                    onPressed: () => {},
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: SvgPicture.asset(
                      'img/twitter.svg',
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    )),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 40.0, right: 0.0),
                  child: Text(
                    "or",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 25.0, right: 30.0),
                child: Form(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 0.0, bottom: 40.0, left: 10.0, right: 10.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          // icon: Icon(Icons.mail),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 0.0, bottom: 40.0, left: 10.0, right: 10.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          // icon: Icon(Icons.lock),
                        ),
                        obscureText: true,
                      ),
                    ),
                  ],
                )),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 35.0, right: 35.0, bottom: 30.0),
                    child: RaisedButton(
                      color: Color.fromARGB(0xff, 11, 34, 66),
                      onPressed: () => {},
                      padding: EdgeInsets.only(
                          left: 50.0, right: 50.0, top: 20.0, bottom: 20.0),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Have an account ? ",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  FlatButton(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
