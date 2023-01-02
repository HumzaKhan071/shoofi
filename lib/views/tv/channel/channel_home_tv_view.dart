import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/tv/extended_views/extended_watchlist_tv_view.dart';
import 'package:shoofi/views/tv/rail_navigation/widgets/left_arrow_btn.dart';
import 'package:shoofi/views/tv/rail_navigation/widgets/right_arrow_btn.dart';
import 'package:shoofi/views/tv/trending/widgets/ad_banner_for_tv.dart';
import 'package:shoofi/views/tv/trending/widgets/recommended_banner_for_tv.dart';
import 'package:shoofi/views/tv/trending/widgets/trending_banner_for_tv.dart';
import 'package:shoofi/views/tv/video_player/video_player_tv_view.dart';

class ChannelHomeTvView extends StatelessWidget {
  ChannelHomeTvView({super.key});
  ScrollController scrollController1 = ScrollController();
  ScrollController scrollController2 = ScrollController();
  ScrollController scrollController3 = ScrollController();
  @override
  Widget build(BuildContext context) {
    HomeBottomNavigationBarController homeBottomNavigationBarController =
        Get.find(tag: "bottomNavigation");
    return Obx(() => homeBottomNavigationBarController.extendedForChannel.value
        ? ExtendedWatchListTvView()
        : Scaffold(
            body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60, right: 60),
                    child: adBannerForTv(isInChannel: true),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60, right: 60),
                        child: recommendedBannerForTv(
                            title: 'Recommended Channels picked for you 💥',
                            imagePath: 'assets/images/fairytale.png',
                            scrollController: scrollController1,
                            onTap: () {
                              Get.to(VideoPlayerTvView());
                            }),
                      ),
                      leftArrowBtn(scrollController: scrollController1),
                      rightArrowBtn(scrollController: scrollController1),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60, right: 60),
                        child: trendingBannerForTv(
                            title: "Recommended Shorts picked for you 💥",
                            scrollController: scrollController2,
                            imgPath: 'assets/images/trending_reels.png'),
                      ),
                      leftArrowBtn(scrollController: scrollController2),
                      rightArrowBtn(scrollController: scrollController2),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60, right: 60),
                        child: recommendedBannerForTv(
                            title: 'Recommended Channels picked for you 💥',
                            imagePath: 'assets/images/fairytale.png',
                            scrollController: scrollController3,
                            onTap: () {
                              Get.to(VideoPlayerTvView());
                            }),
                      ),
                      leftArrowBtn(scrollController: scrollController3),
                      rightArrowBtn(scrollController: scrollController3),
                    ],
                  ),
                ],
              ),
            ),
          )));
  }
}
