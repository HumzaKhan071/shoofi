import 'package:shoofi/Account/MyAccount.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/HomeScreens/reels.dart';

class HomeBottomNavigationBarController extends GetxController {
  List<Widget> screens = [
    HomeTrendingScreen(),
    Reels(),
    HomeSearchScreen(),
    HomeWatchlistScreen(),
    MyAccount(),
  ];
  Rx<int> currentIndex = 0.obs;
  int? indexBeforeShort;
}
