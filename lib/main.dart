import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/Billing%20and%20payments/BillingPaymentScreen.dart';
import 'package:shoofi/Screens/History/HistoryScreen.dart';
import 'package:shoofi/Screens/video_player/videos_main_page.dart';

import 'Screens/SplashScreens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: "Archivo",
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
