import 'package:shoofi/Routes/routes.dart';
import 'package:video_player/video_player.dart';

class ContentScreen extends StatefulWidget {
  final String? src;

  const ContentScreen({Key? key, this.src}) : super(key: key);

  @override
  _ContentScreenState createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  late VideoPlayerController videoPlayerController;
  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  Future initializePlayer() async {
    videoPlayerController = VideoPlayerController.network(widget.src!);
    await Future.wait([videoPlayerController.initialize()]);
    videoPlayerController.setLooping(true);

    videoPlayerController.play();
    setState(() {});
  }

  Rx<bool> isPlaying = true.obs;
  Rx<bool> showPauseResumeBtn = false.obs;

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return videoPlayerController.value.isInitialized
        ? Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  InkWell(
                      onTap: () {
                        if (isPlaying.value) {
                          videoPlayerController.pause();
                          isPlaying.value = false;
                        } else {
                          videoPlayerController.play();
                          isPlaying.value = true;
                        }
                        showPauseResumeBtn.value = true;
                        if (isPlaying.value) {
                          Timer(Duration(seconds: 3), () {
                            showPauseResumeBtn.value = false;
                          });
                        }
                      },
                      child: VideoPlayer(videoPlayerController)),
                  VideoProgressIndicator(videoPlayerController,
                      allowScrubbing: false),
                ],
              ),
              Obx(() => showPauseResumeBtn.value
                  ? Icon(
                      isPlaying.value ? Icons.pause : Icons.play_arrow,
                      color: black.withOpacity(0.7),
                      size: 40,
                    )
                  : SizedBox())
            ],
          )
        : Container(
            color: Colors.black,
            child: Center(
                child: Image.asset(
              "assets/gifs/loader.gif",
              height: 100,
              width: 100,
            )));
  }
}
