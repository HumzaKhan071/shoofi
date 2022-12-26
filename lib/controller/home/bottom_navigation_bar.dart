import 'package:shoofi/routes/routes.dart';

class HomeBottomNavigationBarController extends GetxController {
  Rx<bool> extended = false.obs;
  Rx<int> currentIndex = 0.obs;
  int? indexBeforeShort;
  Rx<bool> isSwitched = false.obs;
  Rx<bool> valueBox = false.obs;
  Widget extendedWidget = Container();

  late Rx<VideoPlayerController> playerController;
  Rx<bool> isPlayingVideo = false.obs;
  Rx<bool> isVideoPlayingInMiniplayer = false.obs;
  String title =
      "Vivamus mattis sapien vel eros cursus, a venenatis duiincidunt";
  Rx<bool> showPauseResumeBtn = true.obs;
}
