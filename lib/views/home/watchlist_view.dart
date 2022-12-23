import '../../Routes/routes.dart';

class HomeWatchlistView extends StatelessWidget {
  HomeWatchListControler controler =
      Get.put(HomeWatchListControler(), tag: "watchlist");
  HomeBottomNavigationBarController homeBottomNavigationBarController =
      Get.find(tag: "bottomNavigation");

  HomeWatchlistView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              if (homeBottomNavigationBarController.extended.value) {
                homeBottomNavigationBarController.extended.value = false;
              } else {
                homeBottomNavigationBarController.currentIndex.value = 0;
              }
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
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Obx(() {
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
                                left: 18.0, right: 18, bottom: 2, top: 10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                      "View all",
                                      style: TextStyle(
                                          color: yellow,
                                          fontSize: 15,
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
              : ExtendedWatchListView();
        }),
      ),
    );
  }
}
