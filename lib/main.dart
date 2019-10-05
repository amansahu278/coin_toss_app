import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page(),
    );
  }
}
class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text("Toss a Coin"),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  String coin = "head";

  void toss(){
    setState(() {
      if(Random().nextBool()){
        coin = "head";
      }else{
        coin = "tail";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple.shade200,
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                splashColor: Colors.amberAccent,
                child: Image.asset('images/$coin.png'),
                onPressed: () {
                  toss();
                  Text("Tossed!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),);
                },
            ),
          ),
        ],
      ),
    );
  }
}

