import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 325,
            ),
            Image.asset('assets/images/logo.png'),
            Text(
              'Coding Made Easy on Mobile',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
