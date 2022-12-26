
import 'package:shoofi/routes/routes.dart';

recommandBanner(
    {required String title,
    required String imagePath,
    required void Function()? onTap}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              title,
              style: TextStyle(
                color: black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Get.to(() => ExtendRecommendedForYou());
            },
            child: Text(
              'See all',
              style: TextStyle(
                color: yellow,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            VideoThumbnail(
              imgPath: imagePath,
              onTap: onTap,
            ),
            SizedBox(
              width: 10,
            ),
            VideoThumbnail(
              imgPath: imagePath,
              onTap: onTap,
            ),
            SizedBox(
              width: 10,
            ),
            VideoThumbnail(
              imgPath: imagePath,
              onTap: onTap,
            ),
            SizedBox(
              width: 10,
            ),
            VideoThumbnail(
              imgPath: imagePath,
              onTap: onTap,
            )
          ],
        ),
      )
    ],
  );
}
