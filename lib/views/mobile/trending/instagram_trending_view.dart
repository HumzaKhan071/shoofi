import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/mobile/trending/widgets/recommanded_banner.dart';
import 'package:shoofi/views/mobile/trending/widgets/trending_banner.dart';

class InstagramTrendingView extends StatelessWidget {
  const InstagramTrendingView({super.key});

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
            adBanner(),
            SizedBox(
              height: 25,
            ),
            recommandBanner(
                title: 'Recommended Channels picked for you 💥',
                imagePath: 'assets/images/movie.png',
                onTap: () {
                  Get.to(ChannelMainPage());
                }),
            trendingBanner(
                title: "Most Trending",
                imgPath: 'assets/images/trending_reels.png'),
            recommandBanner(
                title: 'Trending on Youtube',
                imagePath: 'assets/images/youtube_trending.png',
                onTap: () async {
                  await Get.bottomSheet(VideoPlayerView(),
                      isScrollControlled: true);
                  homeBottomNavigationBarController
                      .isVideoPlayingInMiniplayer.value = true;
                }),
            recommandBanner(
                title: 'Trending on Facebook',
                imagePath: 'assets/images/youtube_trending.png',
                onTap: () async {
                  await Get.bottomSheet(VideoPlayerView(),
                      isScrollControlled: true);
                  homeBottomNavigationBarController
                      .isVideoPlayingInMiniplayer.value = true;
                }),
          ],
        ),
      ),
    ));
  }
}