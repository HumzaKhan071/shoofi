import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/views/tv/channel/channel_tabbar_tv_view.dart';
import 'package:shoofi/views/tv/trending/widgets/ad_banner_for_tv.dart';
import 'package:shoofi/views/tv/trending/widgets/recommended_banner_for_tv.dart';
import 'package:shoofi/views/tv/trending/widgets/trending_banner_for_tv.dart';

class YoutubeTrendingTvView extends StatelessWidget {
  const YoutubeTrendingTvView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeBottomNavigationBarController homeBottomNavigationBarController =
        Get.find(tag: "bottomNavigation");
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            adBannerForTv(),
            SizedBox(
              height: 25,
            ),
            recommendedBannerForTv(
                title: 'Recommended Channels picked for you 💥',
                imagePath: 'assets/images/fairytale.png',
                onTap: () {
                  Get.to(ChannelTabBarTvView());
                }),
            trendingBannerForTv(
                title: "Recommended Shorts picked for you 💥",
                imgPath: 'assets/images/trending_reels.png'),
            recommendedBannerForTv(
                title: 'Recommended Channels picked for you 💥',
                imagePath: 'assets/images/fairytale.png',
                onTap: () {
                  Get.to(ChannelTabBarTvView());
                }),
          ],
        ),
      ),
    ));
  }
}






