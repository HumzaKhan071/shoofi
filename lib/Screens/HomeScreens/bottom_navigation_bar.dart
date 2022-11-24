import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/controllers/Home/bottom_navigation_bar.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    HomeBottomNavigationBarController controller =
        HomeBottomNavigationBarController();
    return Scaffold(
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/Images/homeTrendingIcon.png",
                    color: controller.currentIndex.value == 0 ? yellow : null,
                  ),
                  label: "Trending"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/Images/homeShortIcon.png",
                    color: controller.currentIndex.value == 1 ? yellow : null,
                  ),
                  label: "Shorts"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/Images/homeSearchIcon.png",
                    color: controller.currentIndex.value == 2 ? yellow : null,
                  ),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/Images/HomeWatchlistIcon.png",
                    color: controller.currentIndex.value == 3 ? yellow : null,
                  ),
                  label: "Watchlist"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/Images/homeAccountIcon.png",
                    color: controller.currentIndex.value == 4 ? yellow : null,
                  ),
                  label: "Account"),
            ],
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (newIndex) {
              controller.currentIndex.value = newIndex;
            },
          ),
        ),
        body: Obx(
          () => controller.screens[controller.currentIndex.value],
        ));
  }
}
