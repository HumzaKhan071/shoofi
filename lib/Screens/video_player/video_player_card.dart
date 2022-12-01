import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Utils/image_constant.dart';

class VideoPlayerCard extends StatelessWidget {
  const VideoPlayerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          SizedBox(
            width: Get.width * 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), // Image border
              child: Image.asset(
                ImageConstant.videoThumbnail,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  'Vivamus mattis sapien vel eros cursus a venenatis duiincidunt',
                  style: TextStyle(
                      color: black, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Icon(
                Icons.more_vert,
                color: black,
              ),
            ],
          ),
          SizedBox(
            height: 2.5,
          ),
          Row(
            children: [
              Text(
                '1.5k views',
                style: TextStyle(color: grey, fontSize: 14),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '|',
                style: TextStyle(color: grey, fontSize: 14),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '26 Sept 2021',
                style: TextStyle(color: grey, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
