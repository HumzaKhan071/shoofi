import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shoofi/Channel%20Detail/ChannelDetailScreen.dart';
import 'package:shoofi/Screens/GeneralSetting/GeneralSettingScreen.dart';
import 'package:shoofi/Screens/ModalSheets/more_option.dart';
import 'package:shoofi/Screens/ModalSheets/watchlist.dart';
import 'package:shoofi/Screens/video_player/video_player_card.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../Utils/Colors.dart';
import '../../Utils/image_constant.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setSystemUIOverlayStyle(
//     const SystemUiOverlayStyle(
//       statusBarColor: Colors.blueAccent,
//     ),
//   );
//   runApp(VideoPlayerView());
// }

class VideoPlayerView extends StatelessWidget {
  const VideoPlayerView({super.key});

  @override
  Widget build(BuildContext context) {
    // VideoPlayerController controller = Get.put(VideoPlayerController());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube Player Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: Colors.blueAccent,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 20,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.blueAccent,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

/// Homepage
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late YoutubePlayerController _controller;
  late TextEditingController _idController;
  late TextEditingController _seekToController;

  bool _isPlayerReady = false;

  final List<String> _ids = [
    'nPt8bK2gbaU',
    'gQDByCdjUXw',
    'iLnmTe5Q2Qw',
    '_WoCV4c6XOE',
    'KmzdUe0RSJo',
    '6jZDSSZZxjQ',
    'p2lYr3vM_1w',
    '7QUtEmBT_-w',
    '34_PXCzGw1M',
  ];

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: _ids.first,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
    _idController = TextEditingController();
    _seekToController = TextEditingController();
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {});
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    _idController.dispose();
    _seekToController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      onEnterFullScreen: () {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft,
        ]);
      },
      onExitFullScreen: () {
        // The player forces portraitUp after exiting fullscreen. This overrides the behaviour.
        SystemChrome.setPreferredOrientations(DeviceOrientation.values);
      },
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.blueAccent,
        topActions: <Widget>[
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              _controller.metadata.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
        onReady: () {
          _isPlayerReady = true;
        },
        onEnded: (data) {
          _controller
              .load(_ids[(_ids.indexOf(data.videoId) + 1) % _ids.length]);
          _showSnackBar('Next Video Started!');
        },
      ),
      builder: (context, player) => Scaffold(
        body: Column(
          children: [
            player,
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
      ),
    );
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.blueAccent,
        behavior: SnackBarBehavior.floating,
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }
}



Widget customListTileForMoreOptions(
    {required Widget textWidget, required String imagePath, required onTap}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          SizedBox(width: 20),
          Image.asset(imagePath, color: Colors.black),
          SizedBox(width: 20),
          textWidget
        ],
      ),
    ),
  );
}
