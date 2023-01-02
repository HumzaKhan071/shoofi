import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/tv/extended_views/extended_watchlist_tv_view.dart';
import 'package:shoofi/views/tv/trending/widgets/video_thumbnail_for_tv.dart';

Widget recommendedBannerForTv(
    {required String title,
    required String imagePath,
    ScrollController? scrollController,
    required void Function()? onTap}) {
  HomeBottomNavigationBarController homeBottomNavigationBarController =
      Get.find(tag: "bottomNavigation");
  return Column(
    mainAxisSize: MainAxisSize.min,
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
              if (homeBottomNavigationBarController.onChannelPage) {
                   homeBottomNavigationBarController.extendedForChannel.value = true;
              } else {

              homeBottomNavigationBarController.extendedWidget =
                  ExtendedWatchListTvView();
              homeBottomNavigationBarController.extended.value = true;
              }
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
        controller: scrollController,
        child: Row(
          children: [
            for (int i = 0; i < 10; i++)
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: VideoThumbnailForTv(
                  imgPath: imagePath,
                  onTap: onTap,
                ),
              ),
          ],
        ),
      )
    ],
  );
}
