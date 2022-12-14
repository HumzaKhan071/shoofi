import 'package:shoofi/Routes/routes.dart';

class ChannelPlaylist extends StatelessWidget {
  const ChannelPlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    HomeWatchListControler controller = Get.find(tag: "watchlist");
    HomeBottomNavigationBarController homeBottomNavigationBarController =
        Get.find(tag: "bottomNavigation");
    return Scaffold(
      body: Obx(() {
        return !(homeBottomNavigationBarController.extended.value)
            ? ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 18.0, right: 18, bottom: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  controller.watchListTiles[index],
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    controller.selectedTile =
                                        controller.watchListTiles[index];
                                    homeBottomNavigationBarController
                                        .extended.value = true;
                                  },
                                  child: Text(
                                    "view all",
                                    style: TextStyle(
                                        color: yellow,
                                        fontSize: 13,
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ]),
                        ),
                      ),
                      Wrap(
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
                      ),
                    ],
                  );
                },
              )
            : ExtendedWatchList();
      }),
    );
  }
}
