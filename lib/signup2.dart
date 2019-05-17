import 'package:flutter/material.dart';

class Signup2 extends StatefulWidget {
  @override
  _Signup2State createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
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
          Text(
            "Namaste",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(40.0),
                child: Form(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        icon: Icon(Icons.person),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        icon: Icon(Icons.mail),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        icon: Icon(Icons.lock),
                      ),
                      obscureText: true,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        icon: Icon(Icons.lock),
                      ),
                    ),
                  ],
                )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: RaisedButton(
                  color: Color.fromARGB(0xff, 59, 89, 152),
                  onPressed: () => {},
                  padding: EdgeInsets.all(30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Text("Sign Up"),
                ),
              ),
              FlatButton(
                child: Text(
                  "Already Onboard ? login",
                  style: TextStyle(fontSize: 20.0),
                ),
                // onPressed: ,
              )
            ],
          )
        ],
      ),
    ));
  }
}
