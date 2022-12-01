import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/video_player/video_player_view.dart';

class VideoThumbnail extends StatelessWidget {
  final String imgPath;
  final void Function()? onLongPress;
  final void Function()? onTap;
  const VideoThumbnail({
    Key? key,
    required this.imgPath,
    this.onLongPress,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: onLongPress,
      onTap: onTap,
      child: Container(
        width: Get.width * 0.27,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Get.height * 0.14,
              width: Get.width * 0.27,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imgPath)),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            Text(
              "The most Perfect continue",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: black, fontSize: 11, fontWeight: FontWeight.bold),
            ),
            Text(
              "11/10/2022",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: grey, fontSize: 9, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
