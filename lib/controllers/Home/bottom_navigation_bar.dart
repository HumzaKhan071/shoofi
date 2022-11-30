import 'package:shoofi/Account/MyAccount.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/HomeScreens/reels.dart';

class HomeBottomNavigationBarController extends GetxController {
  Rx<bool> extended = false.obs;
  Rx<int> currentIndex = 0.obs;
  int? indexBeforeShort;
  Rx<bool> isSwitched = false.obs;
  Rx<bool> valueBox = false.obs;
}
