import 'package:shoofi/views/Channel%20Detail/About.dart';
import 'package:shoofi/views/Channel%20Detail/playlist.dart';
import 'package:shoofi/views/Channel%20Detail/videos.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/views/video_player/videos_main_page.dart';

class ChanneledDetail extends StatefulWidget {
  const ChanneledDetail({super.key});

  @override
  State<ChanneledDetail> createState() => _ChanneledDetailState();
}

class _ChanneledDetailState extends State<ChanneledDetail>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    HomeWatchListControler watchListControler =
        Get.put(HomeWatchListControler(), tag: "watchlist");
    HomeBottomNavigationBarController homeBottomNavigationBarController =
        Get.find(tag: "bottomNavigation");
    return WillPopScope(
        onWillPop: () async {
          if (homeBottomNavigationBarController.extended.value) {
            homeBottomNavigationBarController.extended.value = false;
            return false;
          }
          return true;
        },
        child: Obx(
          () => Scaffold(
            persistentFooterButtons: homeBottomNavigationBarController
                    .isVideoPlayingInMiniplayer.value
                ? [miniVideoPlayer(homeBottomNavigationBarController)]
                : null,
            body: DefaultTabController(
                length: _tabController!.length,
                child: Scaffold(
                    backgroundColor: Colors.white,
                    appBar: AppBar(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      title: SvgPicture.asset(ImageConstant.logo3),
                      leading: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: black,
                          )),
                      actions: [
                        Icon(
                          Icons.cast,
                          color: black,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.pin_drop,
                          color: black,
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          height: 48,
                          width: 80,
                          child: languageDropDown(watchListControler),
                        ),
                      ],
                      bottom: TabBar(
                          controller: _tabController,
                          labelColor: black,
                          labelStyle: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontWeight: FontWeight.bold),
                          indicatorColor: yellow,
                          tabs: [
                            Tab(
                              text: "Home",
                            ),
                            Tab(
                              text: "Videos",
                            ),
                            Tab(
                              text: "Playlists",
                            ),
                            Tab(
                              text: "About",
                            ),
                          ]),
                    ),
                    body: TabBarView(controller: _tabController, children: [
                      VideoMainPage(),
                      ChannelVideos(),
                      ChannelPlaylist(),
                      About(),
                    ]))),
          ),
        ));
  }
}
