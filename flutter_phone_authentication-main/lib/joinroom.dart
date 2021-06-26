import 'package:flutter/material.dart';
import 'package:phone_auth_project/Theme/TheTheme.dart';
import 'package:phone_auth_project/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JoinRoom(),
    );
  }
}

class JoinRoom extends StatelessWidget {
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
                  image: AssetImage('assets/images/Joinroom.jpg'),
                )),
              ),
              Container(
                  alignment: Alignment(0.0, -0.5),
                  child: Text(
                    'The Alchemist',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0),
                  )),
              Container(
                alignment: Alignment(0.0, 0.6),
                /*child: Text(
                    'Join Room',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0),
                  )*/

                child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    color: Colors.transparent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TheTheme()),
                      );
                    },
                    child: Text(
                      'Join Room',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
