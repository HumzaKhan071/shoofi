import 'dart:math';

import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/HomeScreens/bgVideo.dart';
import 'package:shoofi/Utils/image_constant.dart';

class HomeShortScreen extends StatelessWidget {
  final String videoLink;
  const HomeShortScreen({required this.videoLink, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        VideoApp(
          videoLink: videoLink,
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
                        "assets/Images/likeIcon.png",
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.04),
                Text(
                  "Vivamus mattis sapien vel eros cursus, a venenatis duiincidunt",
                  style: TextStyle(color: Colors.white,  fontSize: 16, fontWeight: FontWeight.bold),
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
