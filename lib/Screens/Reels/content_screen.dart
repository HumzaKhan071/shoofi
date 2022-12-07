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

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return videoPlayerController.value.isInitialized
        ? Stack(
            alignment: Alignment.bottomCenter,
            children: [
              VideoPlayer(videoPlayerController),
              VideoProgressIndicator(videoPlayerController,
                  allowScrubbing: false),
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
