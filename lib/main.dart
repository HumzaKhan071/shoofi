import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/HomeScreens/all_categories.dart';
import 'package:shoofi/Screens/HomeScreens/reels.dart';

import 'Screens/SplashScreens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          fontFamily: "Archivo",
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}
