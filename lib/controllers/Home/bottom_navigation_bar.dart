import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/HomeScreens/account_screen.dart';
import 'package:shoofi/Screens/HomeScreens/search_screen.dart';
import 'package:shoofi/Screens/HomeScreens/short_screen.dart';
import 'package:shoofi/Screens/HomeScreens/trending_screen.dart';
import 'package:shoofi/Screens/HomeScreens/watchlist_screen.dart';

class HomeBottomNavigationBarController extends GetxController {
  List<Widget> screens = [
    HomeTrendingScreen(),
    HomeShortScreen(),
    HomeSearchScreen(),
    HomeWatchlistScreen(),
    HomeAccountScreen(),
  ];
  Rx<int> currentIndex = 2.obs;
}
