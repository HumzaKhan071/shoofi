import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoofi/Channel%20Detail/ChannelDetailScreen.dart';

import 'package:shoofi/Screens/HomeScreens/extendedRecommendedForYou.dart';
import 'package:shoofi/Screens/HomeScreens/extendingMostTrendingScreen.dart';
import 'package:shoofi/Screens/HomeScreens/reels.dart';
import 'package:shoofi/Screens/Widgets/MyButtonContainer.dart';
import 'package:shoofi/Screens/Widgets/video_thumbnail.dart';
import 'package:shoofi/Screens/video_player/video_player_view.dart';
import 'package:shoofi/controllers/Home/bottom_navigation_bar.dart';

import '../../Utils/Colors.dart';
import '../../Utils/image_constant.dart';

class YouTubeHome extends StatelessWidget {
  const YouTubeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            adBanner(),
            SizedBox(
              height: 25,
            ),
            recommandBanner(
                title: 'Recommended Channels picked for you 💥',
                imagePath: 'assets/images/movie.png',
                onTap: () {
                  Get.to(ChanneledDetail());
                }),
            trendingBanner(
                title: "Most Trending",
                imgPath: 'assets/images/trending_reels.png'),
            recommandBanner(
                title: 'Trending on Youtube',
                imagePath: 'assets/images/youtube_trending.png',
                onTap: () {
                  Get.to(VideoPlayerView());
                }),
            recommandBanner(
                title: 'Trending on Facebook',
                imagePath: 'assets/images/youtube_trending.png',
                onTap: () {
                  Get.to(VideoPlayerView());
                }),
          ],
        ),
      ),
    ));
  }
}

recommandBanner(
    {required String title,
    required String imagePath,
    required void Function()? onTap}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              title,
              style: TextStyle(
                color: black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'See all',
              style: TextStyle(
                color: yellow,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            VideoThumbnail(
              imgPath: imagePath,
              onTap: onTap,
            ),
            SizedBox(
              width: 10,
            ),
            VideoThumbnail(
              imgPath: imagePath,
              onTap: onTap,
            ),
            SizedBox(
              width: 10,
            ),
            VideoThumbnail(
              imgPath: imagePath,
              onTap: onTap,
            ),
            SizedBox(
              width: 10,
            ),
            VideoThumbnail(
              imgPath: imagePath,
              onTap: onTap,
            )
          ],
        ),
      )
    ],
  );
}

trendingBanner({required String title, required String imgPath}) {
  HomeBottomNavigationBarController homeBottomNavigationBarController =
      Get.find(tag: "bottomNavigation");
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              title,
              style: TextStyle(
                color: black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Get.to(ExtendedMostTrendingScreen());
            },
            child: Text(
              'See all',
              style: TextStyle(
                color: yellow,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
              onTap: () {
                homeBottomNavigationBarController.currentIndex.value = 1;
                homeBottomNavigationBarController.indexBeforeShort = 0;
              },
              child: trendingImage(imgPath: 'assets/images/trending_reels.png'),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(Reels());
              },
              child: trendingImage(imgPath: 'assets/images/trending_reels.png'),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(Reels());
              },
              child: trendingImage(imgPath: 'assets/images/trending_reels.png'),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                Get.to(Reels());
              },
              child: trendingImage(imgPath: 'assets/images/trending_reels.png'),
            ),
            SizedBox(width: 15),
          ],
        ),
      ),
    ],
  );
}

trendingImage({required String imgPath}) {
  return Container(
    height: Get.height * 0.18,
    width: Get.width * 0.3,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(16),
    ),
  );
}

adBanner() {
  return Column(
    children: [
      SizedBox(
        width: Get.width * 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25), // Image border
          child: Image.asset(
            ImageConstant.videoThumbnail,
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(ImageConstant.grammarly),
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
              ),
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
            'Ad - UAE',
            style: TextStyle(color: black, fontSize: 14),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      MyButtonContainer(
        text: "Start a free trail",
        conColor: yellow,
        height: 40,
      )
    ],
  );
}
