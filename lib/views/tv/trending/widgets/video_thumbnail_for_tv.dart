import 'package:shoofi/Routes/routes.dart';

class VideoThumbnailForTv extends StatelessWidget {
  final String imgPath;
  final void Function()? onLongPress;
  final void Function()? onTap;

  const VideoThumbnailForTv({
    Key? key,
    required this.imgPath,
    this.onLongPress,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeBottomNavigationBarController homeBottomNavigationBarController =
        Get.find(tag: "bottomNavigation");
    return InkWell(
      onLongPress: onLongPress,
      onTap: onTap,
      child: SizedBox(
        width: Get.width * 0.27,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Get.height * 0.30,
              width: Get.width * 0.27,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imgPath)),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "The most Perfect continue",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: black, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "11/10/2022",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: grey, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
