import 'package:shoofi/routes/routes.dart';

Widget adBannerForTv() {
  return Column(
    children: [
      SizedBox(
        width: Get.width * 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25), // Image border
          child: Image.asset(
            ImageConstant.videoThumbnailTv,
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(ImageConstant.grammarly),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Vivamus mattis sapien vel eros cursus a venenatis duiincidunt',
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Ad - UAE',
                style: TextStyle(color: grey, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
      SizedBox(
        height: 2.5,
      ),
      SizedBox(
        height: 10,
      ),
      MyButtonContainer(
        text: "Start a free trail",
        conColor: yellow.withOpacity(0.2),
        height: 40,
      )
    ],
  );
}
