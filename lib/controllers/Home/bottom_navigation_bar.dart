import 'package:shoofi/Routes/routes.dart';

class HomeBottomNavigationBarController extends GetxController {
  List<Widget> screens = [
    HomeTrendingScreen(),
    HomeShortScreen(),
    HomeSearchScreen(),
    HomeWatchlistScreen(),
    HomeAccountScreen(),
  ];
  Rx<int> currentIndex = 3.obs;
  int indexBeforeShort = 0;
}
