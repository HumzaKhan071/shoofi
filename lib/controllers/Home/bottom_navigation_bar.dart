import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/HomeScreens/reels.dart';

class HomeBottomNavigationBarController extends GetxController {
  List<Widget> screens = [
    HomeTrendingScreen(),
    Reels(),
    HomeSearchScreen(),
    HomeWatchlistScreen(),
    HomeAccountScreen(),
  ];
  Rx<int> currentIndex = 4.obs;
  int? indexBeforeShort;
}
