import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/views/mobile/home/trending_view.dart';
import 'package:shoofi/views/tv/rail_navigation/home_account_tv_view.dart';
import 'package:shoofi/views/tv/rail_navigation/home_reel_tv_view.dart';
import 'package:shoofi/views/tv/rail_navigation/home_search_tv_view.dart';
import 'package:shoofi/views/tv/rail_navigation/home_trending_tv_view.dart';
import 'package:shoofi/views/tv/rail_navigation/home_watchlist_tv_view.dart';

class RailNavigation extends StatelessWidget {
  const RailNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    HomeBottomNavigationBarController controller =
        Get.put(HomeBottomNavigationBarController(), tag: "bottomNavigation");
    List<Widget> screens = [
      HomeTrendingTvView(),
      HomeReelTvView(),
      HomeSearchTvView(),
      HomeWatchlistTvView(),
      HomeAccountTvView()
    ];
    return Scaffold(
        body: Obx(() => Row(
              children: [
                NavigationRail(
                  selectedIndex: controller.currentIndex.value,
                  destinations: <NavigationRailDestination>[
                    NavigationRailDestination(
                        icon: SvgPicture.asset(
                          ImageConstant.homeTrendingicon,
                          color: controller.currentIndex.value == 0
                              ? yellow
                              : null,
                        ),
                        label: Text("Trending")),
                    NavigationRailDestination(
                        icon: SvgPicture.asset(
                          ImageConstant.homeShorticon,
                          color: controller.currentIndex.value == 1
                              ? yellow
                              : null,
                        ),
                        label: Text("Shorts")),
                    NavigationRailDestination(
                        icon: SvgPicture.asset(
                          ImageConstant.homeSearchicon,
                          color: controller.currentIndex.value == 2
                              ? yellow
                              : null,
                        ),
                        label: Text("Search")),
                    NavigationRailDestination(
                        icon: SvgPicture.asset(
                          ImageConstant.homeWatchlisticon,
                          color: controller.currentIndex.value == 3
                              ? yellow
                              : null,
                        ),
                        label: Text("Watchlist")),
                    NavigationRailDestination(
                        icon: SvgPicture.asset(
                          ImageConstant.homeAccounticon,
                          color: controller.currentIndex.value == 4
                              ? yellow
                              : null,
                        ),
                        label: Text("Account")),
                  ],
                  onDestinationSelected: (newIndex) {
                    controller.extended.value = false;
                    if (newIndex == 1) {
                      controller.indexBeforeShort =
                          controller.currentIndex.value;
                    }
                    controller.currentIndex.value = newIndex;
                    // controller.currentIndex.value = newIndex;
                  },
                ),
                const VerticalDivider(thickness: 1, width: 1),
                Expanded(
                    child: Obx(() => controller.extended.value
                        ? controller.extendedWidget
                        : screens[controller.currentIndex.value]))
              ],
            )));
  }
}
