import 'package:shoofi/Routes/routes.dart';
import 'package:video_player/video_player.dart';

class ReelsController extends GetxController {
  late Rx<VideoPlayerController> VideoController;

  StartVideoController(videoLink) {
    VideoController = VideoPlayerController.network(videoLink).obs;
    print(VideoController.value.value.isInitialized);
    update();
  }

  onTapVideo() {
    VideoController.value.value.isPlaying
        ? VideoController.value.pause()
        : VideoController.value.play();
  }

  StopVideo() {
    VideoController.value.dispose();
  }
}
