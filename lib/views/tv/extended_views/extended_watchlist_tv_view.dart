import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/tv/trending/widgets/video_thumbnail_for_tv.dart';

class ExtendedWatchListTvView extends StatelessWidget {
  const ExtendedWatchListTvView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 45.0, right: 45, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  VideoThumbnailForTv(imgPath: ImageConstant.fairytail),
                  VideoThumbnailForTv(imgPath: ImageConstant.fairytail),
                  VideoThumbnailForTv(imgPath: ImageConstant.fairytail),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
