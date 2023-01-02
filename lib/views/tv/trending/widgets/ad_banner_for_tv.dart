import 'package:shoofi/routes/routes.dart';

Widget adBannerForTv({isInChannel = false}) {
  return isInChannel
      ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: Get.width * 0.5,
              height: Get.height * 0.3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25), // Image border
                child: Image.asset(
                  ImageConstant.videoThumbnailTv,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: SizedBox(
                  height: Get.height * 0.4,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(ImageConstant.author),
                      ),
                      Column(
                        children: [
                          Text(
                            "Vivamus mattis sapien vel ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "eros cursus,a venen ...",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                "1,234,567 views",
                                style: TextStyle(fontSize: 12, color: grey),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "|",
                                style: TextStyle(fontSize: 12, color: grey),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "September 1, 2020",
                                style: TextStyle(fontSize: 12, color: grey),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: 200,
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 5,
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exerc",
                              style: TextStyle(
                                fontSize: 12,
                                color: grey,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            )
          ],
        )
      : Column(
          children: [
            SizedBox(
              width: Get.width * 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25), // Image border
                child: Image.asset(
                  ImageConstant.videoThumbnailTv,
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
