import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/tv/channel/channel_tabbar_tv_view.dart';
import 'package:shoofi/views/tv/rail_navigation/widgets/left_arrow_btn.dart';
import 'package:shoofi/views/tv/rail_navigation/widgets/right_arrow_btn.dart';
import 'package:shoofi/views/tv/trending/widgets/ad_banner_for_tv.dart';
import 'package:shoofi/views/tv/trending/widgets/recommended_banner_for_tv.dart';
import 'package:shoofi/views/tv/trending/widgets/trending_banner_for_tv.dart';

class FacebookTrendingTvView extends StatelessWidget {
  const FacebookTrendingTvView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeBottomNavigationBarController homeBottomNavigationBarController =
        Get.find(tag: "bottomNavigation");
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
                      onTap: () {
                        Get.to(ChannelTabBarTvView());
                      }),
                ),
                leftArrowBtn(),
                rightArrowBtn(),
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
                      imgPath: 'assets/images/trending_reels.png'),
                ),
                leftArrowBtn(),
                rightArrowBtn(),
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
                      onTap: () {
                        Get.to(ChannelTabBarTvView());
                      }),
                ),
                leftArrowBtn(),
                rightArrowBtn(),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
