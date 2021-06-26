import 'package:flutter/material.dart';
import 'package:phone_auth_project/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Theme2(),
    );
  }
}

class Theme2 extends StatelessWidget {
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
                  image: AssetImage('assets/images/Theme 2.jpg'),
                )),
              ),
              /*Container(
                alignment: Alignment(0.9, -0.66),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Theme1()),
                    );
                  },
                  child: Image.asset(
                    "assets/images/tick.png",
                    width: 100,
                    height: 100,
                  ),
                ),
              ),*/
              /*Container(
                alignment: Alignment(0.9, 0.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Theme2()),
                    );
                  },
                  child: Image.asset(
                    "assets/images/tick.png",
                    width: 100,
                    height: 100,
                  ),
                ),
              ),*/
              /*Container(
                alignment: Alignment(-0.9, 0.8),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Theme3()),
                    );
                  },
                  child: Image.asset(
                    "assets/images/tick.png",
                    width: 100,
                    height: 100,
                  ),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
