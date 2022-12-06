import 'package:shoofi/Account/MyAccount.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/video_player/video_player_view.dart';
import 'package:shoofi/Utils/image_constant.dart';
import 'package:shoofi/controllers/Home/bottom_navigation_bar.dart';
import 'package:shoofi/Screens/Reels/reels.dart';
import 'package:video_player/video_player.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    HomeBottomNavigationBarController controller =
        Get.put(HomeBottomNavigationBarController(), tag: "bottomNavigation");
    List<Widget> screens = [
      HomeTrendingScreen(),
      Reels(),
      HomeSearchScreen(),
      HomeWatchlistScreen(),
      MyAccount(),
    ];

    return WillPopScope(
      onWillPop: () async {
        if (controller.currentIndex.value == 1) {
          controller.currentIndex.value = controller.indexBeforeShort!;
          return false;
        }
        if (controller.extended.value) {
          controller.extended.value = false;
          return false;
        }
        return true;
      },
      child: Scaffold(
          persistentFooterButtons: [
            Obx(() => controller.currentIndex.value != 1
                ? controller.isVideoPlayingInMiniplayer.value
                    ? InkWell(
                        onTap: () {
                          Get.bottomSheet(VideoPlayerView(),
                              isScrollControlled: true);
                        },
                        child: SizedBox(
                          height: 50,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 80,
                                child: VideoPlayer(
                                    controller.playerController.value),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Text(
                                  controller.title,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              IconButton(
                                icon: Obx(() => Icon(
                                    controller.isPlayingVideo.value
                                        ? Icons.pause
                                        : Icons.play_arrow)),
                                onPressed: () {
                                  if (controller.isPlayingVideo.value) {
                                    controller.playerController.value.pause();
                                    controller.isPlayingVideo.value = false;
                                  } else {
                                    controller.playerController.value.play();
                                    controller.isPlayingVideo.value = true;
                                  }
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.close),
                                onPressed: () {
                                  controller.isVideoPlayingInMiniplayer.value =
                                      false;
                                  controller.playerController.value.dispose();
                                },
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container()
                : Container())
          ],
          bottomNavigationBar: Obx(
            () => controller.currentIndex.value != 1
                ? BottomNavigationBar(
                    currentIndex: controller.currentIndex.value,
                    items: <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                          icon: Image.asset(
                            ImageConstant.homeTrendingicon,
                            color: controller.currentIndex.value == 0
                                ? yellow
                                : null,
                          ),
                          label: "Trending"),
                      BottomNavigationBarItem(
                          icon: Image.asset(
                            ImageConstant.homeShorticon,
                            color: controller.currentIndex.value == 1
                                ? yellow
                                : null,
                          ),
                          label: "Shorts"),
                      BottomNavigationBarItem(
                          icon: Image.asset(
                            ImageConstant.homeSearchicon,
                            color: controller.currentIndex.value == 2
                                ? yellow
                                : null,
                          ),
                          label: "Search"),
                      BottomNavigationBarItem(
                          icon: Image.asset(
                            ImageConstant.homeWatchlisticon,
                            color: controller.currentIndex.value == 3
                                ? yellow
                                : null,
                          ),
                          label: "Watchlist"),
                      BottomNavigationBarItem(
                          icon: Image.asset(
                            ImageConstant.homeAccounticon,
                            color: controller.currentIndex.value == 4
                                ? yellow
                                : null,
                          ),
                          label: "Account"),
                    ],
                    type: BottomNavigationBarType.fixed,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    onTap: (newIndex) {
                      if (newIndex == 1) {
                        controller.indexBeforeShort =
                            controller.currentIndex.value;
                        print(controller.indexBeforeShort);
                      }
                      controller.currentIndex.value = newIndex;
                    },
                  )
                : SizedBox(),
          ),
          body: Obx(
            () => screens[controller.currentIndex.value],
          )),
    );
  }
}
