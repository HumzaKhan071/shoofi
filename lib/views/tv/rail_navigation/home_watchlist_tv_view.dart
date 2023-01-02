import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/tv/extended_views/extended_watchlist_tv_view.dart';
import 'package:shoofi/views/tv/rail_navigation/widgets/left_arrow_btn.dart';
import 'package:shoofi/views/tv/rail_navigation/widgets/right_arrow_btn.dart';
import 'package:shoofi/views/tv/trending/widgets/recommended_banner_for_tv.dart';
import 'package:shoofi/views/tv/trending/widgets/video_thumbnail_for_tv.dart';
import 'package:shoofi/views/tv/video_player/video_player_tv_view.dart';

class HomeWatchlistTvView extends StatelessWidget {
  HomeWatchlistTvView({super.key});

  HomeBottomNavigationBarController homeBottomNavigationBarController =
      Get.find(tag: "bottomNavigation");
  ScrollController scrollController1 = ScrollController();
  ScrollController scrollController2 = ScrollController();
  ScrollController scrollController3 = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            watchlistContainer(
                title: "Watch Later 💥", scrollController: scrollController1),
            watchlistContainer(
                title: "My List 💥", scrollController: scrollController2),
            watchlistContainer(
                title: "Sports 💥", scrollController: scrollController3),
          ],
        ),
      ),
    );
  }

  watchlistContainer({required String title, scrollController}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 60, right: 60, top: 50),
          child: recommendedBannerForTv(
              title: title,
              imagePath: 'assets/images/fairytale.png',
              scrollController: scrollController,
              onTap: () {
                Get.to(VideoPlayerTvView());
              }),
        ),
        leftArrowBtn(scrollController: scrollController),
        rightArrowBtn(scrollController: scrollController),
      ],
    );
  }
}
