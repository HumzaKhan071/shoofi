import 'package:shoofi/Account/MyAccount.dart';
import 'package:shoofi/Channel%20Detail/ChannelDetailScreen.dart';
import 'package:shoofi/Notification/NotificationScreen.dart';
import 'package:shoofi/Screens/AccountUpdate/AccountUpdate1.dart';
import 'package:shoofi/Screens/AccountUpdate/AccountUpdate2.dart';
import 'package:shoofi/Screens/GeneralSetting/GeneralSettingScreen.dart';
import 'package:shoofi/Screens/HelpCenter/help_center.dart';
import 'package:shoofi/Screens/History/HistoryScreen.dart';
import 'package:shoofi/Screens/video_player/video_player_view.dart';
import 'package:shoofi/Screens/video_player/videos_main_page.dart';

import 'package:shoofi/Screens/HomeScreens/extendedRecommendedForYou.dart';
import 'package:shoofi/Screens/HomeScreens/extendingMostTrendingScreen.dart';

import 'Routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
