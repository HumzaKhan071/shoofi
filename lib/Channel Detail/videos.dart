import 'package:shoofi/Routes/routes.dart';

class ChannelVideos extends StatelessWidget {
  const ChannelVideos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Wrap(
            spacing: 10,
            alignment: WrapAlignment.center,
            children: [
              VideoThumbnail(imgPath: "assets/Images/img1.png"),
              VideoThumbnail(imgPath: "assets/Images/img2.png"),
              VideoThumbnail(imgPath: "assets/Images/img3.png"),
            ],
          );
        },
      ),
    );
  }
}
