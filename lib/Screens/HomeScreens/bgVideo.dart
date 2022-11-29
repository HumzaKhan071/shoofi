import 'package:flutter/material.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/controllers/Reels/reel_controller.dart';
import 'package:video_player/video_player.dart';

/// Stateful widget to fetch and then display video content.

class VideoApp extends StatelessWidget {
  VideoApp({super.key});

  @override
  Widget build(BuildContext context) {
    ReelsController controller = Get.find(tag: "reels");
    return Scaffold(
        body: Obx(
      () => controller.VideoController.value.value.isInitialized
          ? Container(
              height: double.infinity,
              width: double.infinity,
              child: InkWell(
                child: VideoPlayer(controller.VideoController.value),
                onTap: () {
                  controller.onTapVideo();
                },
              ))
          : Container(
              color: Colors.black,
              child: Center(child: CircularProgressIndicator()),
            ),
    ));
  }
}
