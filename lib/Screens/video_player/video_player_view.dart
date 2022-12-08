import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/Widgets/recommended_videos.dart';
import 'package:shoofi/controllers/Home/bottom_navigation_bar.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerView extends StatefulWidget {
  VideoPlayerView({super.key});

  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  HomeBottomNavigationBarController homeController =
      Get.find(tag: "bottomNavigation");

  @override
  void initState() {
    super.initState();
    if (!(homeController.isVideoPlayingInMiniplayer.value)) {
      homeController.playerController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      ).obs;
      homeController.playerController.value.initialize().then((value) {
        setState(() {});
      });
      homeController.playerController.value.play();
      homeController.isPlayingVideo.value = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return youtubeView(vertical: orientation == Orientation.portrait);
    });
  }

  youtubeView({required bool vertical}) {
    return Scaffold(
      body: Column(
        children: [
          Obx(() => homeController.playerController.value.value.isInitialized
              ? Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    videoPlayer(vertical),
                    progressBar(),
                    homeController.showPauseResumeBtn.value
                        ? pauseResumeBtn(vertical)
                        : SizedBox(),
                    homeController.showPauseResumeBtn.value
                        ? fullScreenBtn()
                        : SizedBox(),
                  ],
                )
              : loadingWidget()),
          vertical ? recommendedVideos() : SizedBox()
        ],
      ),
    );
  }

  Positioned fullScreenBtn() {
    return Positioned(
      right: 0,
      child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.rectangle_outlined, color: white.withOpacity(0.8))),
    );
  }

  videoPlayer(vertical) {
    return GestureDetector(
      onTap: () {
        homeController.showPauseResumeBtn.value =
            !(homeController.showPauseResumeBtn.value);
        if (homeController.showPauseResumeBtn.value) {
          Timer(Duration(seconds: 2), () {
            homeController.showPauseResumeBtn.value = false;
          });
        }
      },
      child: SizedBox(
          height: vertical ? 250 : Get.height,
          width: Get.width,
          child: VideoPlayer(
            homeController.playerController.value,
          )),
    );
  }

  loadingWidget() {
    return Container(
      height: 250,
      color: Colors.black,
      child: Center(child: CircularProgressIndicator()),
    );
  }

  progressBar() {
    return VideoProgressIndicator(homeController.playerController.value,
        allowScrubbing: true);
  }

  pauseResumeBtn(vertical) {
    return Positioned(
      bottom: vertical ? 250 / 2 : Get.height / 2,
      child: Center(
          child: CircleAvatar(
        radius: 25,
        backgroundColor: black.withOpacity(0.5),
        child: Center(
          child: IconButton(
            onPressed: () {
              if (homeController.isPlayingVideo.value) {
                homeController.playerController.value.pause();
                homeController.isPlayingVideo.value = false;
              } else {
                homeController.playerController.value.play();
                homeController.isPlayingVideo.value = true;
              }
            },
            icon: homeController.isPlayingVideo.value
                ? Icon(
                    Icons.pause,
                    // size: 40,
                    color: white,
                  )
                : Icon(
                    Icons.play_arrow,
                    // size: 40,
                    color: white,
                  ),
          ),
        ),
      )),
    );
  }
}
