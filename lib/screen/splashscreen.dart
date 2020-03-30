import 'package:flutter/material.dart';
import 'package:guide_covid19/screen/bottom_nav_screen.dart';
import 'dart:async';

import 'package:guide_covid19/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/SplashScreenPage';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async{
    var duration = const Duration(seconds: 5);
    return Timer(duration,(){
      Navigator.pushReplacementNamed(context,BottomNavScreen.routeName);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('images/guide_covid.png', width: 150,),
      ),
    );
  }
}
