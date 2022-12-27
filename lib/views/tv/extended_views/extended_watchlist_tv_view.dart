import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/tv/trending/widgets/video_thumbnail_for_tv.dart';

class ExtendedWatchListTvView extends StatelessWidget {
  final  length;
  const ExtendedWatchListTvView({super.key, this.length=3});

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
                children: List.generate(length, (index) =>  VideoThumbnailForTv(imgPath: ImageConstant.fairytail),)
              ),
            );
          },
        ),
      ),
    );
  }
}
