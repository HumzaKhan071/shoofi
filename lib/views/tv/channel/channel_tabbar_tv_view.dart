import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/views/mobile/home/bottom_navigation_bar.dart';
import 'package:shoofi/views/tv/channel/channel_about_tv_view.dart';
import 'package:shoofi/views/tv/channel/channel_home_tv_view.dart';
import 'package:shoofi/views/tv/channel/channel_playlist_tv_view.dart';
import 'package:shoofi/views/tv/channel/channel_videos_tv_view.dart';
import 'package:shoofi/widgets/profile_container.dart';

class ChannelTabBarTvView extends StatelessWidget {
  const ChannelTabBarTvView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeBottomNavigationBarController homeBottomNavigationBarController =
        Get.find(tag: "bottomNavigation");
    return WillPopScope(
      onWillPop: () async {
        homeBottomNavigationBarController.onChannelPage = false;
        homeBottomNavigationBarController.extendedForChannel.value = false;
        return true;
      },
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                child: Stack(
                  children: [
                    SizedBox(
                      child: Container(
                        width: double.infinity,
                        height: 157,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.channelBg),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              ProfileContainer(
                                containerHeight: 150,
                                containerWidth: 150,
                                imageHeight: 150,
                                imageWidth: 150,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Epic Channel",
                                style: TextStyle(
                                    color: black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                              Text(
                                "9.5 M Subscribers",
                                style: TextStyle(color: grey, fontSize: 15),
                              ),
                              Text(
                                "769 Videos",
                                style: TextStyle(color: grey, fontSize: 11),
                              )
                            ],
                          ),
                          SizedBox(width: 40),
                          Container(
                            height: 45,
                            width: Get.width * 0.8,
                            child: TabBar(
                                onTap: (value) {
                                  homeBottomNavigationBarController
                                      .extendedForChannel.value = false;
                                },
                                indicatorColor: yellow,
                                tabs: [
                                  Tab(
                                    child: Text(
                                      "Home",
                                      style:
                                          TextStyle(color: black, fontSize: 25),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "Videos",
                                      style:
                                          TextStyle(color: black, fontSize: 25),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "Playlists",
                                      style:
                                          TextStyle(color: black, fontSize: 25),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "About",
                                      style:
                                          TextStyle(color: black, fontSize: 25),
                                    ),
                                  ),
                                ]),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ChannelHomeTvView(),
                    ChannelVideosTvView(),
                    ChannelPlaylistTvView(),
                    ChannelAboutTvView(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
