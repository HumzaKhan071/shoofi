import 'package:country_list_pick/country_list_pick.dart';
import 'package:country_picker/country_picker.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/controllers/Reels/reel_controller.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class Reels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Color> colors = <Color>[Colors.red, Colors.blue, Colors.green];
    ReelsController controller = Get.put(ReelsController(), tag: "reels");
    final Controller slideWidgetController = Controller();
    List<String> links = [
      "https://assets.mixkit.co/videos/preview/mixkit-tree-with-yellow-flowers-1173-large.mp4",
      'https://assets.mixkit.co/videos/preview/mixkit-father-and-his-little-daughter-eating-marshmallows-in-nature-39765-large.mp4',
      'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
    ];

    return Scaffold(
      body: TikTokStyleFullPageScroller(
        controller: slideWidgetController,
        contentSize: links.length,
        builder: (BuildContext context, int index) {
          controller.StartVideoController(links[index]);
          slideWidgetController.addListener((event) {
            controller.StopVideo();
          });
          return HomeShortScreen();
        },
      ),
    );
  }
}
