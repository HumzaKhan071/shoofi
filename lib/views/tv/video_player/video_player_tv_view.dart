import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/tv/channel/channel_about_tv_view.dart';
import 'package:shoofi/views/tv/channel/channel_home_tv_view.dart';
import 'package:shoofi/views/tv/channel/channel_tabbar_tv_view.dart';
import 'package:shoofi/widgets/recommended_video_container.dart';

class VideoPlayerTvView extends StatefulWidget {
  const VideoPlayerTvView({super.key});

  @override
  State<VideoPlayerTvView> createState() => _VideoPlayerTvViewState();
}

class _VideoPlayerTvViewState extends State<VideoPlayerTvView> {
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    super.initState();
    initializePlayer(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
  }

  Future initializePlayer(videoLink) async {
    videoPlayerController = VideoPlayerController.network(
      videoLink,
    );
    await Future.wait([videoPlayerController.initialize()]);
    videoPlayerController.setLooping(true);

    videoPlayerController.play();
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 45, right: 45),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: VideoPlayer(videoPlayerController),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() => ChannelTabBarTvView());
                        },
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(ImageConstant.author),
                        ),
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
                  Wrap(
                    spacing: 50,
                    children: [
                      SvgPicture.asset(ImageConstant.likebutton),
                      SvgPicture.asset(ImageConstant.disLikeicon2),
                      SvgPicture.asset(ImageConstant.watchlater),
                      Icon(Icons.more_horiz)
                    ],
                  )
                ],
              ),
              SizedBox(height: 40),
              RecommendedVideoContainer(),
              SizedBox(height: 40),
              RecommendedVideoContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
