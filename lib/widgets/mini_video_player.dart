import 'package:shoofi/routes/routes.dart';

Widget miniVideoPlayer(
    HomeBottomNavigationBarController homeBottomNavigationBarController) {
  return InkWell(
    onTap: () {
      Get.bottomSheet(VideoPlayerView(), isScrollControlled: true);
    },
    child: SizedBox(
      height: 50,
      child: Row(
        children: [
          SizedBox(
            width: 120,
            child: VideoPlayer(
                homeBottomNavigationBarController.playerController.value),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              homeBottomNavigationBarController.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          IconButton(
            icon: Obx(() => Icon(
                homeBottomNavigationBarController.isPlayingVideo.value
                    ? Icons.pause
                    : Icons.play_arrow)),
            onPressed: () {
              if (homeBottomNavigationBarController.isPlayingVideo.value) {
                homeBottomNavigationBarController.playerController.value
                    .pause();
                homeBottomNavigationBarController.isPlayingVideo.value = false;
              } else {
                homeBottomNavigationBarController.playerController.value.play();
                homeBottomNavigationBarController.isPlayingVideo.value = true;
              }
            },
          ),
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              homeBottomNavigationBarController
                  .isVideoPlayingInMiniplayer.value = false;
              homeBottomNavigationBarController.playerController.value
                  .dispose();
            },
          ),
        ],
      ),
    ),
  );
}
