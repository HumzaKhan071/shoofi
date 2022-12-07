import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/ModalSheets/create_watch_list.dart';
import 'package:shoofi/Screens/video_player/video_player_view.dart';
import 'package:shoofi/Utils/image_constant.dart';
import 'package:shoofi/controllers/Home/bottom_navigation_bar.dart';

class HomeWatchlistScreen extends StatelessWidget {
  HomeWatchListControler controler =
      Get.put(HomeWatchListControler(), tag: "watchlist");
  HomeBottomNavigationBarController homeBottomNavigationBarController =
      Get.find(tag: "bottomNavigation");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: black,
            )),
        title: SvgPicture.asset(
          ImageConstant.logo3,
        ),
        actions: [
          SizedBox(width: 10),
          InkWell(
            onTap: () {
              createWatchListBottomSheet();
            },
            child: Row(
              children: [
                Icon(Icons.add, color: black, size: 30),
                SizedBox(width: 2),
                Text(
                  "Create",
                  style: TextStyle(
                      color: black, fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
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
                                  controler.watchListTiles[index],
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    controler.selectedTile =
                                        controler.watchListTiles[index];
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
