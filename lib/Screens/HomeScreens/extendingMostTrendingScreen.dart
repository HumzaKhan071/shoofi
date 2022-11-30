import 'package:shoofi/Routes/routes.dart';

class ExtendedMostTrendingScreen extends StatelessWidget {
  const ExtendedMostTrendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Most trending",
            style: TextStyle(
                color: black, fontSize: 18, fontWeight: FontWeight.bold)),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.keyboard_arrow_left),
            color: black),
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            value: 0.0,
            backgroundColor: grey,
            valueColor: AlwaysStoppedAnimation<Color>(yellow),
          ),
          SizedBox(height: 20),
          Flexible(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return Wrap(
                  spacing: 10,
                  alignment: WrapAlignment.center,
                  children: [
                    VideoThumbnail(imgPath: "assets/images/img1.png"),
                    VideoThumbnail(imgPath: "assets/images/img2.png"),
                    VideoThumbnail(imgPath: "assets/images/img3.png"),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
