import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/tv/extended_views/extended_watchlist_tv_view.dart';
import 'package:shoofi/views/tv/rail_navigation/widgets/left_arrow_btn.dart';
import 'package:shoofi/views/tv/rail_navigation/widgets/right_arrow_btn.dart';
import 'package:shoofi/views/tv/trending/widgets/video_thumbnail_for_tv.dart';

class HomeWatchlistTvView extends StatelessWidget {
  HomeWatchlistTvView({super.key});

  HomeBottomNavigationBarController homeBottomNavigationBarController =
      Get.find(tag: "bottomNavigation");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            watchlistContainer(title: "Watch Later 💥"),
            watchlistContainer(title: "My List 💥"),
            watchlistContainer(title: "Sports 💥"),
          ],
        ),
      ),
    );
  }

  watchlistContainer({required String title}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 50, right: 40),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 45.0, right: 45, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        )),
                    GestureDetector(
                      onTap: () {
                        homeBottomNavigationBarController.extendedWidget =
                            ExtendedWatchListTvView();
                        homeBottomNavigationBarController.extended.value = true;
                      },
                      child: Text("See all",
                          style: TextStyle(
                            fontSize: 19,
                            color: yellow,
                          )),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  VideoThumbnailForTv(imgPath: ImageConstant.fairytail),
                  VideoThumbnailForTv(imgPath: ImageConstant.fairytail),
                  VideoThumbnailForTv(imgPath: ImageConstant.fairytail),
                ],
              ),
            ],
          ),
        ),
        leftArrowBtn(),
        rightArrowBtn(),
      ],
    );
  }
}
