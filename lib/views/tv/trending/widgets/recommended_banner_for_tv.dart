import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/tv/extended_views/extended_watchlist_tv_view.dart';
import 'package:shoofi/views/tv/trending/widgets/video_thumbnail_for_tv.dart';

Widget recommendedBannerForTv(
    {required String title,
    required String imagePath,
    required void Function()? onTap}) {
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
            onPressed: () {
              homeBottomNavigationBarController.extendedWidget =
                  ExtendedWatchListTvView();
              homeBottomNavigationBarController.extended.value = true;
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
      SizedBox(
        height: 15,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            VideoThumbnailForTv(
              imgPath: imagePath,
              onTap: onTap,
            ),
            SizedBox(
              width: 10,
            ),
            VideoThumbnailForTv(
              imgPath: imagePath,
              onTap: onTap,
            ),
            SizedBox(
              width: 10,
            ),
            VideoThumbnailForTv(
              imgPath: imagePath,
              onTap: onTap,
            ),
            SizedBox(
              width: 10,
            ),
            VideoThumbnailForTv(
              imgPath: imagePath,
              onTap: onTap,
            )
          ],
        ),
      )
    ],
  );
}
