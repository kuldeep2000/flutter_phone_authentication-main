import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:phone_auth_project/joinroom.dart';
import 'package:phone_auth_project/login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String uid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                  (route) => false);
            },
          )
        ],
      ),
      /*body: Center(
        child: Text("lets go back"),
      ),*/

      /*body: Container(
            child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              child: Row(
                
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Text('I m Kuldeep'),
            ),
            Container(
              child: Text('I m Kuldeep'),
            ),
            Container(
              child: Text('I m Kuldeep'),
            )
          ],
        ))*/
      body: Column(children: <Widget>[
        Row(
          //ROW 1
          children: [
            getContainer1(),
            getContainer2(),
          ],
        ),
        Row(//ROW 2
            children: [
          getContainer3(),
          getContainer4(),
        ]),
        Row(//ROW 2
            children: [
          getContainer5(),
          getContainer6(),
        ]),
        Row(//ROW 2
            children: [
          getContainer7(),
          getContainer8(),
        ]),
        Row(//ROW 2
            children: [
          getContainer9(),
          getContainer10(),
        ]),
      ]),
    );
  }

  Widget getContainer1() {
    return Container(
      height: 100,
      width: 100,
      //color: Colors.blue,
      margin: EdgeInsets.all(15.0),
      color: Colors.red,
    );
  }

  Widget getContainer2() {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 10),
        color: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => JoinRoom()),
          );
        },
        child: Text(
          'The Alchemist',
          //style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget getContainer3() {
    return Container(
      height: 100,
      width: 100,
      //color: Colors.blue,
      margin: EdgeInsets.all(15.0),
      color: Colors.black,
    );
  }

  Widget getContainer4() {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Text('This is black'),
    );
  }

  Widget getContainer5() {
    return Container(
      height: 100,
      width: 100,
      //color: Colors.blue,
      margin: EdgeInsets.all(15.0),
      color: Colors.blue,
    );
  }

  Widget getContainer6() {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Text('This is blue'),
    );
  }

  Widget getContainer7() {
    return Container(
      height: 100,
      width: 100,
      //color: Colors.blue,
      margin: EdgeInsets.all(15.0),
      color: Colors.yellow,
    );
  }

  Widget getContainer8() {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Text('This is yellow'),
    );
  }

  Widget getContainer9() {
    return Container(
      height: 100,
      width: 100,
      //color: Colors.blue,
      margin: EdgeInsets.all(15.0),
      color: Colors.pink,
    );
  }

  Widget getContainer10() {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Text('This is pink'),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    uid = FirebaseAuth.instance.currentUser.uid;
  }
}
