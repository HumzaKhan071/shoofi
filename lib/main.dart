import 'package:shoofi/Screens/HomeScreens/reels.dart';

import 'package:shoofi/Screens/video_player/video_player_card.dart';
import 'package:shoofi/Screens/video_player/video_player_view.dart';

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
