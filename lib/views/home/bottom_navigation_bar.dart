import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/views/home/account_view.dart';
import 'package:shoofi/views/home/reel_view.dart';
import 'package:shoofi/views/home/search_view.dart';
import 'package:shoofi/views/home/trending_view.dart';
import 'package:shoofi/views/home/watchlist_view.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    HomeBottomNavigationBarController controller =
        Get.put(HomeBottomNavigationBarController(), tag: "bottomNavigation");
    List<Widget> screens = [
      HomeTrendingView(),
      HomeReelView(),
      HomeSearchView(),
      HomeWatchlistView(),
      HomeAccountView(),
    ];

    return WillPopScope(
        onWillPop: () async {
          if (controller.currentIndex.value == 1) {
            controller.currentIndex.value = controller.indexBeforeShort!;
            return false;
          } else if (controller.extended.value) {
            controller.extended.value = false;
            return false;
          } else if (controller.currentIndex.value != 0) {
            controller.currentIndex.value = 0;
            return false;
          } else {
            return true;
          }
        },
        child: Obx(() => Scaffold(
            persistentFooterButtons: controller.currentIndex.value != 1
                ? controller.isVideoPlayingInMiniplayer.value
                    ? [miniVideoPlayer(controller)]
                    : null
                : null,
            bottomNavigationBar: controller.currentIndex.value != 1
                ? BottomNavigationBar(
                    currentIndex: controller.currentIndex.value,
                    items: <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                          icon: SvgPicture.asset(
                            ImageConstant.homeTrendingicon,
                            color: controller.currentIndex.value == 0
                                ? yellow
                                : null,
                          ),
                          label: "Trending"),
                      BottomNavigationBarItem(
                          icon: SvgPicture.asset(
                            ImageConstant.homeShorticon,
                            color: controller.currentIndex.value == 1
                                ? yellow
                                : null,
                          ),
                          label: "Shorts"),
                      BottomNavigationBarItem(
                          icon: SvgPicture.asset(
                            ImageConstant.homeSearchicon,
                            color: controller.currentIndex.value == 2
                                ? yellow
                                : null,
                          ),
                          label: "Search"),
                      BottomNavigationBarItem(
                          icon: SvgPicture.asset(
                            ImageConstant.homeWatchlisticon,
                            color: controller.currentIndex.value == 3
                                ? yellow
                                : null,
                          ),
                          label: "Watchlist"),
                      BottomNavigationBarItem(
                          icon: SvgPicture.asset(
                            ImageConstant.homeAccounticon,
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
                      controller.extended.value = false;
                      if (newIndex == 1) {
                        controller.indexBeforeShort =
                            controller.currentIndex.value;
                      }
                      controller.currentIndex.value = newIndex;
                      // controller.currentIndex.value = newIndex;
                    },
                  )
                : SizedBox(),
            body: screens[controller.currentIndex.value])));
  }
}
