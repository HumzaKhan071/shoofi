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
      home: ExtendedMostTrendingScreen(),
    );
  }
}
