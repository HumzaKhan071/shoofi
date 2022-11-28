import 'dart:async';

import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/GetStartedScreens/GetStarted.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late FlipCardController _controller;
  @override
  void initState() {
    super.initState();
    _controller = FlipCardController();
    Timer(Duration(seconds: 2), () {
      _controller.toggleCard();
    });
    Timer(Duration(seconds: 4), () {
      Get.offAll(GetStarted());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: FlipCard(
              controller: _controller,
              front: Image.asset("assets/Images/logo1.png"),
              back: Image.asset("assets/Images/logo2.png"))),
    );
  }
}
