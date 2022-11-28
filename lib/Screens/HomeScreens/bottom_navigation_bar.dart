import 'package:shoofi/Account/MyAccount.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/HomeScreens/reels.dart';
import 'package:shoofi/controllers/Home/bottom_navigation_bar.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    HomeBottomNavigationBarController controller =
        Get.put(HomeBottomNavigationBarController(), tag: "bottomNavigation");
    List<Widget> screens = [
      HomeTrendingScreen(),
      Reels(),
      HomeSearchScreen(),
      HomeWatchlistScreen(),
      MyAccount(),
    ];

    return WillPopScope(
      onWillPop: () async {
        if (controller.extended.value) {
          controller.extended.value = false;
          return false;
        }
        if (controller.currentIndex.value == 1) {
          controller.currentIndex.value = controller.indexBeforeShort!;
          return false;
        }
        return true;
      },
      child: Scaffold(
          bottomNavigationBar: Obx(
            () => controller.currentIndex.value != 1
                ? BottomNavigationBar(
                    currentIndex: controller.currentIndex.value,
                    items: <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                          icon: Image.asset(
                            "assets/Images/homeTrendingIcon.png",
                            color: controller.currentIndex.value == 0
                                ? yellow
                                : null,
                          ),
                          label: "Trending"),
                      BottomNavigationBarItem(
                          icon: Image.asset(
                            "assets/Images/homeShortIcon.png",
                            color: controller.currentIndex.value == 1
                                ? yellow
                                : null,
                          ),
                          label: "Shorts"),
                      BottomNavigationBarItem(
                          icon: Image.asset(
                            "assets/Images/homeSearchIcon.png",
                            color: controller.currentIndex.value == 2
                                ? yellow
                                : null,
                          ),
                          label: "Search"),
                      BottomNavigationBarItem(
                          icon: Image.asset(
                            "assets/Images/HomeWatchlistIcon.png",
                            color: controller.currentIndex.value == 3
                                ? yellow
                                : null,
                          ),
                          label: "Watchlist"),
                      BottomNavigationBarItem(
                          icon: Image.asset(
                            "assets/Images/homeAccountIcon.png",
                            color: controller.currentIndex.value == 4
                                ? yellow
                                : null,
                          ),
                          label: "Account"),
                    ],
                    type: BottomNavigationBarType.fixed,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    onTap: (newIndex) {
                      if (newIndex == 1) {
                        controller.indexBeforeShort =
                            controller.currentIndex.value;
                      }
                      controller.currentIndex.value = newIndex;
                    },
                  )
                : SizedBox(),
          ),
          body: Obx(
            () => screens[controller.currentIndex.value],
          )),
    );
  }
}
