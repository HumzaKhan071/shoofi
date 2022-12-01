import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoofi/Routes/routes.dart';
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
          Icon(
            Icons.add_location_outlined,
            color: black,
          ),
          SizedBox(width: 10),
          SizedBox(
              height: 48,
              width: 50,
              child: Obx(
                () => DropdownButton(
                    isExpanded: true,
                    underline: Container(),
                    value: controler.dropdownvalue.value,
                    style: TextStyle(
                        color: black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    items: controler.items.map((String item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      controler.dropdownvalue.value = newValue as String;
                    }),
              )),
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
