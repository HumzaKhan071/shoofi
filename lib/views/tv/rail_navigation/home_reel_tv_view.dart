import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/tv/rail_navigation/widgets/left_arrow_btn.dart';
import 'package:shoofi/views/tv/rail_navigation/widgets/right_arrow_btn.dart';

class HomeReelTvView extends StatefulWidget {
  const HomeReelTvView({super.key});

  @override
  State<HomeReelTvView> createState() => _HomeReelTvViewState();
}

class _HomeReelTvViewState extends State<HomeReelTvView> {
  var videos = [
    'https://assets.mixkit.co/videos/preview/mixkit-taking-photos-from-different-angles-of-a-model-34421-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-young-mother-with-her-little-daughter-decorating-a-christmas-tree-39745-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-girl-in-neon-sign-1232-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-winter-fashion-cold-looking-woman-concept-video-39874-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-womans-feet-splashing-in-the-pool-1261-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
  ];

  late String currentVideo;

  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    super.initState();
    currentVideo = videos.first;
    initializePlayer(currentVideo);
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
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: Get.height * 0.8,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        if (currentVideo != videos.first) {
                          var index = videos.indexOf(currentVideo);
                          currentVideo = videos[index - 1];
                          videoPlayerController.dispose();
                          initializePlayer(currentVideo);
                        }
                      },
                      child: leftArrowBtn()),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                          width: Get.width * 0.18,
                          height: Get.height * 0.65,
                          child: VideoPlayer(videoPlayerController))),
                  InkWell(
                      onTap: () {
                        if (currentVideo != videos.last) {
                          var index = videos.indexOf(currentVideo);
                          currentVideo = videos[index + 1];
                          videoPlayerController.dispose();
                          initializePlayer(currentVideo);
                        }
                      },
                      child: rightArrowBtn()),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: Get.width * 0.75,
              child: ListView.builder(
                  itemCount: 25,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: trendingImageForTv(
                        imgPath: ImageConstant.short1,
                      ),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
