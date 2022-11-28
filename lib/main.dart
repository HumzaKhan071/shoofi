import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/SplashScreens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final heroController = HeroController();
    return GetMaterialApp(
      navigatorObservers: [heroController],
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
