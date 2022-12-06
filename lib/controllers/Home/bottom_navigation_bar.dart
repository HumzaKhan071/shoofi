import 'package:shoofi/Routes/routes.dart';
import 'package:video_player/video_player.dart';

class HomeBottomNavigationBarController extends GetxController {
  Rx<bool> extended = false.obs;
  Rx<int> currentIndex = 0.obs;
  int? indexBeforeShort;
  Rx<bool> isSwitched = false.obs;
  Rx<bool> valueBox = false.obs;

  late Rx<VideoPlayerController> playerController;
  Rx<bool> isPlayingVideo = false.obs;
  Rx<bool> isVideoPlayingInMiniplayer = false.obs;
  String title =
      "Vivamus mattis sapien vel eros cursus, a venenatis duiincidunt";
}
