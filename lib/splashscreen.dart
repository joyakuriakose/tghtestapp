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
        Duration(seconds: 13),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white12,
        body: Center(
          child: Container(
            width: 150,height: 150,

            child: Image.network("https://w0.peakpx.com/wallpaper/404/508/HD-wallpaper-flutter-logo-flutter-code-computer-programming-logo.jpg"),
          ),
        ));
  }
}
