import 'package:flutter/material.dart';
//import 'package:phone_auth_project/Theme/Theme1.dart';
//import 'package:phone_auth_project/Theme/Theme2.dart';
//import 'package:phone_auth_project/Theme/Theme3.dart';

//import 'package:phone_auth_project/pages/loginpage.dart';
import 'package:phone_auth_project/Screens/call_screen.dart';
//import 'package:phone_auth_project/pages/lobby.dart';
import 'package:phone_auth_project/Screens/homepage.dart';

import 'package:phone_auth_project/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TheTheme(),
      /*Scaffold(
      //appBar: AppBar(title: Text('Set Full Screen Background Image')),
      
      body: Image.asset('assets/o1.jpg'),
    )*/
      /* routes: {
        CallPage.routeName: (context) => CallPage(),
        LobbyPage.routeName: (context) => LobbyPage(),
        LoginPage.routeName: (context) => LoginPage(),
      },*/
    );
  }
}

class TheTheme extends StatelessWidget {
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
                  image: AssetImage('assets/images/The Themes.jpg'),
                )),
              ),
              Container(
                alignment: Alignment(0.9, -0.66),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      //MaterialPageRoute(builder: (context) => Theme1()),
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: Image.asset(
                    "assets/images/tick.png",
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              Container(
                alignment: Alignment(0.9, 0.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      //MaterialPageRoute(builder: (context) => Theme2()),
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: Image.asset(
                    "assets/images/tick.png",
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              Container(
                alignment: Alignment(-0.9, 0.8),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      //MaterialPageRoute(builder: (context) => Theme3()),
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: Image.asset(
                    "assets/images/tick.png",
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
