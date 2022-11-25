import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoofi/Screens/GetStartedScreens/GetStarted.dart';

import '../../controllers/SplashControllers/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String imgPath = "assets/Images/logo1.png";
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      setState(() {
        imgPath = "assets/Images/logo2.png";
      });
    });
    Timer(
        Duration(seconds: 6),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => GetStarted())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset(imgPath)),
    );
  }
}
