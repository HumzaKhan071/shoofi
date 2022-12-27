import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/views/mobile/home/trending_view.dart';
import 'package:shoofi/views/tv/get_started/get_started_tv_view.dart';
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SvgPicture.asset(ImageConstant.logo3),
                    ),
                    Expanded(
                        child: Wrap(
                      spacing: 50,
                      direction: Axis.vertical,
                      alignment: WrapAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            controller.currentIndex.value = 0;
                          },
                          icon: SvgPicture.asset(
                            ImageConstant.homeTrendingicon,
                            color: controller.currentIndex.value == 0
                                ? yellow
                                : null,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            controller.currentIndex.value = 1;
                          },
                          icon: SvgPicture.asset(
                            ImageConstant.homeShorticon,
                            color: controller.currentIndex.value == 1
                                ? yellow
                                : null,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            controller.currentIndex.value = 2;
                          },
                          icon: SvgPicture.asset(
                            ImageConstant.homeSearchicon,
                            color: controller.currentIndex.value == 2
                                ? yellow
                                : null,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            controller.currentIndex.value = 3;
                          },
                          icon: SvgPicture.asset(
                            ImageConstant.homeWatchlisticon,
                            color: controller.currentIndex.value == 3
                                ? yellow
                                : null,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            controller.currentIndex.value = 4;
                          },
                          icon: SvgPicture.asset(
                            ImageConstant.homeAccounticon,
                            color: controller.currentIndex.value == 4
                                ? yellow
                                : null,
                          ),
                        ),
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextButton(
                          onPressed: () {
                            Get.offAll(() => GetStartedTvView());
                          },
                          child: Text(
                            "Sign Out",
                            style: TextStyle(
                                color: red,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                  ],
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
