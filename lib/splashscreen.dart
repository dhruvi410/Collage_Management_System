import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'Home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
  super.initState();
  Timer(Duration(seconds: 5), () {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
  });
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor: Colors.white,
  body: Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  // logo here
  Image.asset(
  'assets/logo1.png',
  height: 350,
  ),
  SizedBox(
  height: 10,
  ),
  Text(
      "Welcome",
       style: TextStyle(fontSize: 40,fontFamily: "calistoga" ,),textAlign: TextAlign.center
  ),
    SizedBox(
      height: 20,
    ),
  CircularProgressIndicator(
  valueColor: AlwaysStoppedAnimation<Color>(Colors.tealAccent),
  )
  ],
  ),
  ),
  );
  }
  }


