import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/Reels/content_screen.dart';
import 'package:shoofi/Utils/image_constant.dart';
import 'package:shoofi/controllers/Home/bottom_navigation_bar.dart';

class Reels extends StatelessWidget {
  final List<String> videos = [
    'https://assets.mixkit.co/videos/preview/mixkit-taking-photos-from-different-angles-of-a-model-34421-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-young-mother-with-her-little-daughter-decorating-a-christmas-tree-39745-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-girl-in-neon-sign-1232-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-winter-fashion-cold-looking-woman-concept-video-39874-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-womans-feet-splashing-in-the-pool-1261-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
  ];
  @override
  Widget build(BuildContext context) {
    HomeBottomNavigationBarController homeBottomNavigationBarController =
        Get.find(tag: "bottomNavigation");
    return Scaffold(
      body: Stack(
        children: [
          //We need swiper for every content
          Swiper(
            itemBuilder: (BuildContext context, int index) {
              return ContentScreen(
                src: videos[index],
              );
            },
            itemCount: videos.length,
            scrollDirection: Axis.vertical,
          ),
          Positioned(
            top: 30,
            left: 5,
            child: IconButton(
                onPressed: () {
                  homeBottomNavigationBarController.currentIndex.value =
                      homeBottomNavigationBarController.indexBeforeShort!;
                },
                color: white,
                icon: Icon(Icons.arrow_back_ios, size: 15)),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Wrap(
                    direction: Axis.vertical,
                    spacing: Get.height * 0.05,
                    children: [
                      Image.asset(ImageConstant.moreHorizontalIcon),
                      Image.asset(ImageConstant.addListicon),
                      Image.asset(ImageConstant.shareForwardIcon),
                      Image.asset(ImageConstant.disLikeicon),
                      Image.asset(
                        ImageConstant.likeIcon,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.04),
                Text(
                  "Vivamus mattis sapien vel eros cursus, a venenatis duiincidunt",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "1,234,567 views",
                        style: TextStyle(color: white, fontSize: 11),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "|",
                      style: TextStyle(color: white, fontSize: 11),
                    ),
                    SizedBox(width: 10),
                    Opacity(
                      opacity: 0.5,
                      child: Text("September 1, 2020",
                          style: TextStyle(color: white, fontSize: 11)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
