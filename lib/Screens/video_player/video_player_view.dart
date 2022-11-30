import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
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
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avatar.png'),
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
                          Image.asset(ImageConstant.likeIcon),
                          Image.asset(ImageConstant.disLikeicon2),
                          Image.asset(ImageConstant.forwardIcon),
                          Image.asset(ImageConstant.share),
                          InkWell(
                              onTap: () {
                                moreOptions();
                              },
                              child: Image.asset(ImageConstant.moreIcon)),
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

moreOptions() {
  return Get.bottomSheet(
    Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          )),
      height: Get.height * 0.55,
      child: Column(
        children: [
          SizedBox(height: 10),
          Image.asset("assets/images/divider.png"),
          SizedBox(height: 20),
          Text("More Options",
              style: TextStyle(
                  color: black, fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 15),
          Divider(
            thickness: 1,
            indent: 15,
            endIndent: 15,
          ),
          ListTile(
              dense: true,
              leading: Image.asset('assets/images/clock.png'),
              title: Text("Video Quality")),
          ListTile(
              dense: true,
              leading: Image.asset('assets/images/captions.png'),
              title: Text("Captions")),
          ListTile(
              dense: true,
              leading: Image.asset('assets/images/share.png'),
              title: Text("Share")),
          ListTile(
              dense: true,
              leading: Image.asset('assets/images/notInterested.png'),
              title: Text("Not Interested")),
          ListTile(
              dense: true,
              leading: Image.asset('assets/images/report.png'),
              title: Text("Report")),
          ListTile(
              dense: true,
              leading: Image.asset('assets/images/helpCenter.png'),
              title: Text("Help Center")),
        ],
      ),
    ),
    isScrollControlled: true,
  );
}
