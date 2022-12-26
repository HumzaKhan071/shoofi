import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/tv/trending/widgets/video_thumbnail_for_tv.dart';

recommendedBannerForTv(
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
            onPressed: () {},
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
            VideoThumbnailForTv(
              imgPath: imagePath,
              onTap: onTap,
            ),
            SizedBox(
              width: 10,
            ),
            VideoThumbnailForTv(
              imgPath: imagePath,
              onTap: onTap,
            ),
            SizedBox(
              width: 10,
            ),
            VideoThumbnailForTv(
              imgPath: imagePath,
              onTap: onTap,
            ),
            SizedBox(
              width: 10,
            ),
            VideoThumbnailForTv(
              imgPath: imagePath,
              onTap: onTap,
            )
          ],
        ),
      )
    ],
  );
}