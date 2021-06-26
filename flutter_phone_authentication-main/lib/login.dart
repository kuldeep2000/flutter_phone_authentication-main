import 'package:flutter/material.dart';
import 'package:phone_auth_project/otp.dart';
import 'package:phone_auth_project/register.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/8.png'),
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 150),
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, right: 10, left: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  prefix: Padding(
                    padding: EdgeInsets.all(4),
                    child: Text('+91'),
                  ),
                ),
                maxLength: 10,
                keyboardType: TextInputType.number,
                controller: _controller,
              ),
            )
          ]),
          Column(children: [
            Container(
              margin: EdgeInsets.all(5),
              width: double.infinity,
              child: RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OTPScreen(_controller.text)));
                },
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            /*Container(
              margin: EdgeInsets.only(top: 100),
              child: Center(
                child: Text(
                  'New User?',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
                ),
              ),
            ),*/
          ]),
          /*Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: FlatButton(
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Text(
                'Register',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )*/
        ],
      ),*/
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/8.png'),
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 450, right: 10, left: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  prefix: Padding(
                    padding: EdgeInsets.all(4),
                    child: Text('+91'),
                  ),
                ),
                maxLength: 10,
                keyboardType: TextInputType.number,
                controller: _controller,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 550, right: 10, left: 10),
              width: double.infinity,
              child: RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OTPScreen(_controller.text)));
                },
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
