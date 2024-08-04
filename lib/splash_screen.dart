import 'dart:async';

import 'package:flutter/material.dart';
import 'package:proj/basic_page.dart';
import 'package:proj/page.dart';
import 'package:proj/main.dart';
import 'package:proj/signin_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BasicPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            "Vibe",
            style: TextStyle(
              fontSize: 45,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
