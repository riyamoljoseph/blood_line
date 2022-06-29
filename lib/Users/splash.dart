import 'dart:async';

import 'package:blood_line/Users/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
  }

  Widget _buildLogo() {
    return Center(
      child: Container(
        child: Image.asset("assets/blood.png"),
      ),
    );
  }
  startTime() async {
    var _duration = new Duration(seconds: 3);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _buildLogo(),
    );
  }
}
