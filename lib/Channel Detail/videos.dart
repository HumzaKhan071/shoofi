import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/video_player/video_player_view.dart';

class ChannelVideos extends StatelessWidget {
  const ChannelVideos({super.key});

  @override
  Widget build(BuildContext context) {
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
                  onTap: () {
                    Get.to(VideoPlayerView());
                  },
                ),
                VideoThumbnail(
                  imgPath: "assets/images/img2.png",
                  onTap: () {
                    Get.to(VideoPlayerView());
                  },
                ),
                VideoThumbnail(
                  imgPath: "assets/images/img3.png",
                  onTap: () {
                    Get.to(VideoPlayerView());
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
