import 'dart:math';

import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/HomeScreens/bgVideo.dart';

class HomeShortScreen extends StatelessWidget {
  final String? videoLink;
  const HomeShortScreen({this.videoLink, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        VideoApp(),
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
                      Image.asset("assets/Images/moreHorizontalIcon.png"),
                      Image.asset("assets/Images/addListIcon.png"),
                      Image.asset("assets/Images/shareForwardIcon.png"),
                      Image.asset("assets/Images/dislikeIcon.png"),
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
                  style: GoogleFonts.archivo(
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
                        style: GoogleFonts.archivo(color: white, fontSize: 11),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "|",
                      style: GoogleFonts.archivo(color: white, fontSize: 11),
                    ),
                    SizedBox(width: 10),
                    Opacity(
                      opacity: 0.5,
                      child: Text("September 1, 2020",
                          style:
                              GoogleFonts.archivo(color: white, fontSize: 11)),
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
