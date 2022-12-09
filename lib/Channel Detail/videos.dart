import 'package:shoofi/Routes/routes.dart';

class ChannelVideos extends StatelessWidget {
  const ChannelVideos({super.key});

  @override
  Widget build(BuildContext context) {
    HomeBottomNavigationBarController homeBottomNavigationBarController =
        Get.find(tag: "bottomNavigation");
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) {
            return Wrap(
              spacing: 10,
              alignment: WrapAlignment.center,
              children: [
                VideoThumbnail(
                  imgPath: "assets/images/img1.png",
                  onTap: () async {
                    await Get.bottomSheet(VideoPlayerView(),
                        isScrollControlled: true);
                    homeBottomNavigationBarController
                        .isVideoPlayingInMiniplayer.value = true;
                  },
                ),
                VideoThumbnail(
                  imgPath: "assets/images/img2.png",
                  onTap: () async {
                    await Get.bottomSheet(VideoPlayerView(),
                        isScrollControlled: true);
                    homeBottomNavigationBarController
                        .isVideoPlayingInMiniplayer.value = true;
                  },
                ),
                VideoThumbnail(
                  imgPath: "assets/images/img3.png",
                  onTap: () async {
                    await Get.bottomSheet(VideoPlayerView(),
                        isScrollControlled: true);
                    homeBottomNavigationBarController
                        .isVideoPlayingInMiniplayer.value = true;
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
