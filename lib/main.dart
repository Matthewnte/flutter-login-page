import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Login());
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 64.0, 0.0, 0.0),
          padding: EdgeInsets.all(16.0),
          child: Image.asset('assets/images/appIcon.png'),
        ),
        SizedBox(
          height: 50.0,
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            autofocus: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
              suffixIcon: Icon(Icons.email)),
          )),
        Container(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            autofocus: false,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Password",
              suffixIcon: Icon(Icons.lock)),
        )),
        Container(
          margin: EdgeInsets.all(16.0),
          child: FlatButton(
            onPressed: () {},
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: Colors.blue,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 64.0, 0, 0),
          child: Text(
            "Already have an account? Sign up",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16.0,
                )
          ),
        )
      ]),
    );
  }
}
