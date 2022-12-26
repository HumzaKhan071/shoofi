import 'package:shoofi/controller/home/bottom_navigation_bar.dart';
import 'package:shoofi/routes/routes.dart';

import '../../home/reel_view.dart';

trendingBanner({required String title, required String imgPath}) {
  HomeBottomNavigationBarController homeBottomNavigationBarController =
      Get.find(tag: "bottomNavigation");
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              title,
              style: TextStyle(
                color: black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Get.to(ExtendedMostTrendingScreen());
            },
            child: Text(
              'See all',
              style: TextStyle(
                color: yellow,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
              onTap: () {
                homeBottomNavigationBarController.currentIndex.value = 1;
                homeBottomNavigationBarController.indexBeforeShort = 0;
              },
              child: trendingImage(imgPath: 'assets/images/trending_reels.png'),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(HomeReelView());
              },
              child: trendingImage(imgPath: 'assets/images/trending_reels.png'),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(HomeReelView());
              },
              child: trendingImage(imgPath: 'assets/images/trending_reels.png'),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(HomeReelView());
              },
              child: trendingImage(imgPath: 'assets/images/trending_reels.png'),
            ),
            SizedBox(width: 15),
          ],
        ),
      ),
    ],
  );
}
