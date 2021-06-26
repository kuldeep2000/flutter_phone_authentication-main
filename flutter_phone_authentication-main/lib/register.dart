import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:phone_auth_project/home.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:phone_auth_project/otp.dart';
import 'package:email_validator/email_validator.dart';
import 'package:phone_auth_project/database.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  DatabaseMethods databaseMethods = DatabaseMethods();
  final formKey = GlobalKey<FormState>();
  TextEditingController _controller = TextEditingController();
  TextEditingController _usernameTextEditingcontroller =
      TextEditingController();
  TextEditingController _EmailTextEditingcontroller = TextEditingController();
  TextEditingController _AddresslTextEditingcontroller =
      TextEditingController();

  signMeUP() {
    if (formKey.currentState.validate()) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('RegisterPage'),
      ),*/
      /*body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 1000.0,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/9.png'),
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Center(
                child: Text(
                  'Register',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _usernameTextEditingcontroller,
                            decoration:
                                InputDecoration(hintText: "         Username"),
                          ),
                          TextFormField(
                            controller: _EmailTextEditingcontroller,
                            decoration:
                                InputDecoration(hintText: "         Email"),
                          ),
                          TextFormField(
                            controller: _AddresslTextEditingcontroller,
                            decoration:
                                InputDecoration(hintText: "         Address"),
                          ),
                          TextFormField(
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
                        ],
                      ),
                    )
                  ],
                )),
            GestureDetector(
              onTap: () {
                signMeUP();
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  color: Colors.green,
                  onPressed: () {
                    Map<String, String> UserInfoMap = {
                      "userame": _usernameTextEditingcontroller.text,
                      "Email": _EmailTextEditingcontroller.text,
                      "Address": _AddresslTextEditingcontroller.text,
                      "Phone Number": _controller.text,
                    };
                    databaseMethods.uploadUserInfo(UserInfoMap);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => OTPScreen(_controller.text)));
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              width: 160.0,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              color: Colors.orange,
            ),
          ],
        ),
      ),*/

      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/9.png'),
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 00),
              child: Center(
                child: Text(
                  'Register',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 400, right: 10, left: 10),
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _usernameTextEditingcontroller,
                            decoration:
                                InputDecoration(hintText: "         Username"),
                          ),
                          TextFormField(
                            controller: _EmailTextEditingcontroller,
                            decoration:
                                InputDecoration(hintText: "         Email"),
                          ),
                          TextFormField(
                            controller: _AddresslTextEditingcontroller,
                            decoration:
                                InputDecoration(hintText: "         Address"),
                          ),
                          TextFormField(
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
                        ],
                      ),
                    )
                  ],
                )),
            /*Container(
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
              ),*/
          ],
        ),
      ),
    );
  }
}
