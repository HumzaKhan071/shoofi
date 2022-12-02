import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

/// Stateful widget to fetch and then display video content.
class VideoApp extends StatefulWidget {
  final String videoLink;
  const VideoApp({Key? key, required this.videoLink}) : super(key: key);

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      widget.videoLink,
    )..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    _controller.setLooping(true);
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _controller.value.isInitialized
          ? Container(
              height: double.infinity,
              width: double.infinity,
              child: InkWell(
                child: VideoPlayer(_controller),
                onTap: () {
                  setState(() {
                    _controller.value.isPlaying
                        ? _controller.pause()
                        : _controller.play();
                  });
                },
              ))
          : Container(
              color: Colors.black,
              child: Center(
                  child: Image.asset(
                "assets/gifs/loader.gif",
                height: 100,
                width: 100,
              ))),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
