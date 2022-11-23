import 'package:shoofi/Routes/routes.dart';

class HomeSearchScreen extends StatelessWidget {
  const HomeSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: MyTextField(
              text: "Search or Paste URL",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              suffix: Text(
                "|",
                style: TextStyle(color: Colors.red),
              ),
              suffixIcon: Icon(
                Icons.filter_list_alt,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 15),
          Flexible(
            child: ListView.separated(
              itemCount: 5,
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
              separatorBuilder: (context, index) {
                return SizedBox(height: 5);
              },
            ),
          )
        ],
      ),
    );
  }
}

class VideoThumbnail extends StatelessWidget {
  final String imgPath;
  const VideoThumbnail({
    Key? key,
    required this.imgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.2,
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
            style: GoogleFonts.archivo(
                color: black, fontSize: 11, fontWeight: FontWeight.bold),
          ),
          Text(
            "11/10/2022",
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.archivo(
                color: grey, fontSize: 9, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
