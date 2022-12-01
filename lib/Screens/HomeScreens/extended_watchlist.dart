import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/video_player/video_player_view.dart';

class ExtendedWatchList extends StatelessWidget {
  const ExtendedWatchList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeWatchListControler controler = Get.find(tag: "watchlist");
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24.0, bottom: 15, top: 20),
                child: Text(
                  controler.selectedTile,
                  style: TextStyle(
                      color: black, fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Wrap(
                spacing: 10,
                alignment: WrapAlignment.center,
                children: [
                  VideoThumbnail(
                      imgPath: "assets/images/img1.png",
                      onTap: () {
                        Get.to(VideoPlayerView());
                      },
                      onLongPress: () {
                        remvoeWatchListBottomSheet();
                      }),
                  VideoThumbnail(
                      imgPath: "assets/images/img2.png",
                      onTap: () {
                        Get.to(VideoPlayerView());
                      },
                      onLongPress: () {
                        remvoeWatchListBottomSheet();
                      }),
                  VideoThumbnail(
                      imgPath: "assets/images/img3.png",
                      onTap: () {
                        Get.to(VideoPlayerView());
                      },
                      onLongPress: () {
                        remvoeWatchListBottomSheet();
                      }),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
