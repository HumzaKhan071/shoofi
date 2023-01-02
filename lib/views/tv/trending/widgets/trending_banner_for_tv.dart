import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/tv/rail_navigation/home_reel_tv_view.dart';

Widget trendingBannerForTv({required String title, required String imgPath, scrollController}) {
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
        controller: scrollController,
        child: Row(
          children: [
            SizedBox(width: 20),
            InkWell(
              onTap: () {
                homeBottomNavigationBarController.currentIndex.value = 1;
                homeBottomNavigationBarController.indexBeforeShort = 0;
              },
              child: trendingImageForTv(imgPath: ImageConstant.short1),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(HomeReelTvView());
              },
              child: trendingImageForTv(imgPath: ImageConstant.short2),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(HomeReelTvView());
              },
              child: trendingImageForTv(imgPath: ImageConstant.short3),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(HomeReelTvView());
              },
              child: trendingImageForTv(imgPath: ImageConstant.short1),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(HomeReelTvView());
              },
              child: trendingImageForTv(imgPath: ImageConstant.short2),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(HomeReelTvView());
              },
              child: trendingImageForTv(imgPath: ImageConstant.short3),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(HomeReelTvView());
              },
              child: trendingImageForTv(imgPath: ImageConstant.short1),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(HomeReelTvView());
              },
              child: trendingImageForTv(imgPath: ImageConstant.short2),
            ),
            SizedBox(width: 15),
          ],
        ),
      ),
    ],
  );
}
