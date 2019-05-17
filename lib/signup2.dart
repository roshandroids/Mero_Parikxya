import 'package:flutter/material.dart';
import './login.dart';

class Signup2 extends StatefulWidget {
  @override
  _Signup2State createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  void moveToRegister() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 60.0),
              child: Text(
                "Namaste !",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 0.0,
                  ),
                ),
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
                            hintText: "Name",
                            // icon: Icon(Icons.mail),
                          ),
                        ),
                      ),
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
                      Padding(
                        padding: EdgeInsets.only(
                            top: 0.0, bottom: 40.0, left: 10.0, right: 10.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Confirm Password",
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
                      padding: EdgeInsets.only(
                          left: 35.0, right: 35.0, bottom: 30.0),
                      child: RaisedButton(
                        color: Color.fromARGB(0xff, 11, 34, 66),
                        onPressed: () => {},
                        padding: EdgeInsets.only(
                            left: 50.0, right: 50.0, top: 20.0, bottom: 20.0),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Already Onboard ? ",
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
                      onPressed: moveToRegister,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
