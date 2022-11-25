import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoofi/Screens/Widgets/MyButtonContainer.dart';
import 'package:shoofi/Screens/Widgets/video_thumbnail.dart';

import '../../Utils/Colors.dart';

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
                imagePath: 'assets/Images/movie.png'),
            trendingBanner(
                title: "Most Trending",
                imgPath: 'assets/Images/trending_reels.png'),
            recommandBanner(
                title: 'Trending on Youtube',
                imagePath: 'assets/Images/youtube_trending.png'),
          ],
        ),
      ),
    ));
  }
}

recommandBanner({required String title, required String imagePath}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              title,
              style: GoogleFonts.archivo(
                  color: black, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'See all',
              style: GoogleFonts.archivo(
                  color: yellow, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            VideoThumbnail(imgPath: imagePath),
            SizedBox(
              width: 10,
            ),
            VideoThumbnail(imgPath: imagePath),
            SizedBox(
              width: 10,
            ),
            VideoThumbnail(imgPath: imagePath),
            SizedBox(
              width: 10,
            ),
            VideoThumbnail(imgPath: imagePath)
          ],
        ),
      )
    ],
  );
}

trendingBanner({required String title, required String imgPath}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              title,
              style: GoogleFonts.archivo(
                  color: black, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'See all',
              style: GoogleFonts.archivo(
                  color: yellow, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            trendingImage(imgPath: 'assets/Images/trending_reels.png'),
            SizedBox(width: 15),
            trendingImage(imgPath: 'assets/Images/trending_reels.png'),
            SizedBox(width: 15),
            trendingImage(imgPath: 'assets/Images/trending_reels.png'),
            SizedBox(width: 15),
            trendingImage(imgPath: 'assets/Images/trending_reels.png'),
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
            'assets/Images/video_thumbnail.png',
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
            backgroundImage: AssetImage('assets/Images/grammarly.png'),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Text(
              'Vivamus mattis sapien vel eros cursus a venenatis duiincidunt',
              style: GoogleFonts.archivo(
                  color: black, fontSize: 16, fontWeight: FontWeight.bold),
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
            style: GoogleFonts.archivo(color: black, fontSize: 14),
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
