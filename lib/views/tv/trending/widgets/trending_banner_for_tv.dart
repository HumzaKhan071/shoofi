import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/tv/extended_views/extended_watchlist_tv_view.dart';
import 'package:shoofi/views/tv/rail_navigation/home_reel_tv_view.dart';

Widget trendingBannerForTv({required String title, required String imgPath}) {
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
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
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
      SizedBox(height: 15),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
              onTap: () {
                homeBottomNavigationBarController.currentIndex.value = 1;
                homeBottomNavigationBarController.indexBeforeShort = 0;
              },
              child: trendingImage(imgPath: ImageConstant.short1),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(HomeReelTvView());
              },
              child: trendingImage(imgPath: ImageConstant.short2),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(HomeReelTvView());
              },
              child: trendingImage(imgPath: ImageConstant.short3),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(HomeReelTvView());
              },
              child: trendingImage(imgPath: ImageConstant.short1),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(HomeReelTvView());
              },
              child: trendingImage(imgPath: ImageConstant.short2),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(HomeReelTvView());
              },
              child: trendingImage(imgPath: ImageConstant.short3),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(HomeReelTvView());
              },
              child: trendingImage(imgPath: ImageConstant.short1),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(HomeReelTvView());
              },
              child: trendingImage(imgPath: ImageConstant.short2),
            ),
            SizedBox(width: 15),
          ],
        ),
      ),
    ],
  );
}
