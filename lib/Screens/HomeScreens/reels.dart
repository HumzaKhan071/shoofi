import 'package:shoofi/Routes/routes.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class Reels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Color> colors = <Color>[Colors.red, Colors.blue, Colors.green];
    final Controller controller = Controller();
    List<String> links = [
      "https://assets.mixkit.co/videos/preview/mixkit-tree-with-yellow-flowers-1173-large.mp4",
      'https://assets.mixkit.co/videos/preview/mixkit-father-and-his-little-daughter-eating-marshmallows-in-nature-39765-large.mp4',
      'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
    ];
    return Scaffold(
      body: TikTokStyleFullPageScroller(
        contentSize: links.length,
        swipePositionThreshold: 0.3,
        // // ^ the fraction of the screen needed to scroll
        swipeVelocityThreshold: 200,
        // // ^ the velocity threshold for smaller scrolls
        // animationDuration: const Duration(milliseconds: 400),
        // // ^ how long the animation will take
        // controller: controller,
        // // ^ registering our own function to listen to page changes
        builder: (BuildContext context, int index) {
          return HomeShortScreen(
            videoLink: links[index],
          );
        },
      ),
    );
  }
}