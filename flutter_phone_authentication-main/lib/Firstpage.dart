import 'package:flutter/material.dart';
import 'package:phone_auth_project/login.dart';
import 'package:phone_auth_project/register.dart';
import 'package:phone_auth_project/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Firstpage(),
    );
  }
}

class Firstpage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/5.png'),
                )),
              ),
              Container(
                alignment: Alignment(-0.5, 1.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Image.asset(
                    "assets/images/login.jpg",
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              Container(
                alignment: Alignment(0.5, 1.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: Image.asset(
                    "assets/images/signup.jpg",
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
