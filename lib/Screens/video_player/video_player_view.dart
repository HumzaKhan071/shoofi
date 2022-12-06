import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoofi/Channel%20Detail/ChannelDetailScreen.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/ModalSheets/more_option.dart';
import 'package:shoofi/Screens/ModalSheets/watchlist.dart';
import 'package:shoofi/Screens/video_player/video_player_card.dart';
import 'package:shoofi/Utils/image_constant.dart';
import 'package:shoofi/controllers/Home/bottom_navigation_bar.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerView extends StatefulWidget {
  VideoPlayerView({super.key});

  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  HomeBottomNavigationBarController homeController =
      Get.find(tag: "bottomNavigation");

  @override
  void initState() {
    super.initState();
    if (!(homeController.isVideoPlayingInMiniplayer.value)) {
      homeController.playerController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      ).obs;
      homeController.playerController.value.initialize().then((value) {
        setState(() {});
      });
      homeController.playerController.value.play();
      homeController.isPlayingVideo.value = true;
      ;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(() => homeController.playerController.value.value.isInitialized
              ? Stack(
                  children: [
                    SizedBox(
                        height: 250,
                        child: VideoPlayer(
                          homeController.playerController.value,
                        )),
                  ],
                )
              : Container(
                  height: 250,
                  color: Colors.black,
                  child: Center(child: CircularProgressIndicator()),
                )),
          Expanded(
              child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(ChanneledDetail());
                          },
                          child: CircleAvatar(
                            backgroundImage: AssetImage(ImageConstant.avatar),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(
                            'Vivamus mattis sapien vel eros cursus a venenatis duiincidunt',
                            style: TextStyle(
                                color: black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          '1.5k views',
                          style: TextStyle(color: grey, fontSize: 14),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '|',
                          style: TextStyle(color: grey, fontSize: 14),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '26 Sept 2021',
                          style: TextStyle(color: grey, fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          ImageConstant.likebutton,
                          width: 19,
                          height: 19,
                        ),
                        SvgPicture.asset(
                          ImageConstant.disLikeicon2,
                          width: 19,
                          height: 19,
                        ),
                        SvgPicture.asset(
                          ImageConstant.forwardIcon,
                          width: 19,
                          height: 19,
                        ),
                        InkWell(
                          onTap: () {
                            WatchlistsBottomModalSheet();
                          },
                          child: SvgPicture.asset(
                            ImageConstant.share,
                            width: 19,
                            height: 19,
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              moreOptions();
                            },
                            child: Image.asset(
                              ImageConstant.moreIcon,
                              width: 19,
                              height: 19,
                            )),
                      ],
                    ),
                    //
                  ],
                ),
              ),
              VideoPlayerCard(),
              VideoPlayerCard(),
              VideoPlayerCard(),
              VideoPlayerCard(),
            ],
          ))
        ],
      ),
    );
  }
}
