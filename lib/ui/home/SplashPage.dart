import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashPageState();
  }
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: new ThemeData(backgroundColor: Colors.blue),
        home: new Scaffold(
          backgroundColor: Colors.white,
          body: new Center(
            child: new Image.asset(
              "images/splash_logo.png",
              width: 170,
              height: 170,
            ),
          ),
        ));
  }

  @override
  void initState() {
    super.initState();
    countDown();
  }

// 倒计时
  void countDown() {
    var _duration = new Duration(seconds: 3);
    new Future.delayed(_duration, go2HomePage);
  }

  void go2HomePage() {
    Navigator.of(context).pushReplacementNamed('/HomePage');
  }
}
