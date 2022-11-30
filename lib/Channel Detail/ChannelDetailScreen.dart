import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoofi/Channel%20Detail/About.dart';
import 'package:shoofi/Channel%20Detail/playlist.dart';
import 'package:shoofi/Channel%20Detail/videos.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/video_player/videos_main_page.dart';
import 'package:shoofi/Utils/image_constant.dart';
import 'package:shoofi/controllers/ChannelDetails/playlist_controller.dart';
import 'package:shoofi/controllers/Home/bottom_navigation_bar.dart';

class ChanneledDetail extends StatefulWidget {
  const ChanneledDetail({super.key});

  @override
  State<ChanneledDetail> createState() => _ChanneledDetailState();
}

class _ChanneledDetailState extends State<ChanneledDetail>
    with SingleTickerProviderStateMixin {
  String dropdownvalue = 'EN';
  var items = ['EN', 'US', 'UR'];
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
      child: Scaffold(
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
                      width: 50,
                      child: DropdownButton(
                          isExpanded: true,
                          underline: Container(),
                          value: dropdownvalue,
                          style: TextStyle(color: black, fontSize: 15, fontWeight: FontWeight.bold ),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          }),
                    ),
                  ],
                  bottom: TabBar(
                      controller: _tabController,
                      labelColor: black,
                      labelStyle: TextStyle(
                        fontSize: 14,
                        color: black,
                         fontWeight: FontWeight.bold
                       
                      ),
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
    );
  }
}
