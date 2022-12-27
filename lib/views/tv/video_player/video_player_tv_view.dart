import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/widgets/recommended_video_container.dart';

class VideoPlayerTvView extends StatelessWidget {
  const VideoPlayerTvView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.red,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(ImageConstant.author),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Vivamus mattis sapien vel eros cursus, a ",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: black),
                          ),
                          Text(
                            "venenatis duiincidunt",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: black),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "1,234,567 views",
                                style: TextStyle(fontSize: 11, color: grey),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "|",
                                style: TextStyle(fontSize: 11, color: grey),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "September 1, 2020",
                                style: TextStyle(fontSize: 11, color: grey),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(ImageConstant.likebutton),
                      SizedBox(width: 20),
                      SvgPicture.asset(ImageConstant.disLikeicon2),
                      SizedBox(width: 20),
                      SvgPicture.asset(ImageConstant.watchlater),
                      SizedBox(width: 20),
                      Icon(Icons.more_horiz)
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              RecommendedVideoContainer(),
              SizedBox(height: 20),
              RecommendedVideoContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
