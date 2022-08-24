import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tghtestapp/views/homepage.dart';

void main() {
  runApp(MaterialApp(home: SplashScreenn()));
}

class SplashScreenn extends StatefulWidget {
  @override
  SplashScreennState createState() => SplashScreennState();
}

class SplashScreennState extends State<SplashScreenn> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white12,
        body: Center(
          child: Container(
            child: Text('loading..', style: TextStyle(color: Colors.green, fontSize: 25),),
          ),
        ));
  }
}
