import 'package:shoofi/controller/home/facebook_trending_controller.dart';
import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/tv/channel/channel_tabbar_tv_view.dart';
import 'package:shoofi/views/tv/rail_navigation/widgets/left_arrow_btn.dart';
import 'package:shoofi/views/tv/rail_navigation/widgets/right_arrow_btn.dart';
import 'package:shoofi/views/tv/trending/widgets/ad_banner_for_tv.dart';
import 'package:shoofi/views/tv/trending/widgets/recommended_banner_for_tv.dart';
import 'package:shoofi/views/tv/trending/widgets/trending_banner_for_tv.dart';
import 'package:shoofi/views/tv/video_player/video_player_tv_view.dart';

class FacebookTrendingTvView extends StatelessWidget {
  const FacebookTrendingTvView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeBottomNavigationBarController homeBottomNavigationBarController =
        Get.find(tag: "bottomNavigation");
    FacebookTrendingController youtubeTrendingController = Get.isRegistered()
        ? Get.find(tag: "youtube")
        : Get.put(FacebookTrendingController(), tag: "youtube");
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: adBannerForTv(),
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
                      scrollController:
                          youtubeTrendingController.scrollController1,
                      onTap: () {
                        homeBottomNavigationBarController.onChannelPage = true;
                        Get.to(ChannelTabBarTvView());
                      }),
                ),
                leftArrowBtn(
                    scrollController:
                        youtubeTrendingController.scrollController1),
                rightArrowBtn(
                    scrollController:
                        youtubeTrendingController.scrollController1),
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
                      scrollController:
                          youtubeTrendingController.scrollController2,
                      imgPath: 'assets/images/trending_reels.png'),
                ),
                leftArrowBtn(
                    scrollController:
                        youtubeTrendingController.scrollController2),
                rightArrowBtn(
                    scrollController:
                        youtubeTrendingController.scrollController2),
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
                      scrollController:
                          youtubeTrendingController.scrollController3,
                      onTap: () {
                        Get.to(VideoPlayerTvView());
                      }),
                ),
                leftArrowBtn(
                    scrollController:
                        youtubeTrendingController.scrollController3),
                rightArrowBtn(
                    scrollController:
                        youtubeTrendingController.scrollController3),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
