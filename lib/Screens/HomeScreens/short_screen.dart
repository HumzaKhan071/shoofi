import 'dart:math';

import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/HomeScreens/bgVideo.dart';
import 'package:shoofi/Utils/image_constant.dart';
import 'package:shoofi/controllers/Home/bottom_navigation_bar.dart';
import 'package:tiktoklikescroller/controller.dart';

class HomeShortScreen extends StatelessWidget {
  final String videoLink;
  const HomeShortScreen({required this.videoLink, super.key});

  @override
  Widget build(BuildContext context) {
    HomeBottomNavigationBarController homeBottomNavigationBarController =
        Get.find(tag: "bottomNavigation");
    return Stack(
      children: [
        VideoApp(
          videoLink: videoLink,
        ),
        Positioned(
          top: 40,
          left: 20,
          child: IconButton(
              onPressed: () {
                homeBottomNavigationBarController.currentIndex.value =
                    homeBottomNavigationBarController.indexBeforeShort!;
              },
              color: white,
              icon: Icon(Icons.arrow_back_ios)),
        ),
        Container(
          child: Padding(
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
        ),
      ],
    );
  }
}
