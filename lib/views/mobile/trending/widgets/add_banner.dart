import 'package:shoofi/routes/routes.dart';

adBanner() {
  return Column(
    children: [
      SizedBox(
        width: Get.width * 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25), // Image border
          child: Image.asset(
            ImageConstant.videoThumbnail,
            fit: BoxFit.fill,
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
          Flexible(
            child: Text(
              'Vivamus mattis sapien vel eros cursus a venenatis duiincidunt',
              style: TextStyle(
                color: black,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 2.5,
      ),
      Row(
        children: [
          SizedBox(
            width: 50,
          ),
          Text(
            'Ad - UAE',
            style: TextStyle(color: black, fontSize: 14),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      MyButtonContainer(
        text: "Start a free trail",
        conColor: yellow,
        height: 40,
      )
    ],
  );
}
