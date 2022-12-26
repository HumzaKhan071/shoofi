import 'package:shoofi/routes/routes.dart';

Expanded recommendedVideos() {
  return Expanded(
      child: ListView(
    padding: EdgeInsets.all(0),
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(ChannelMainPage());
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage(ImageConstant.avatar),
                  ),
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
                        fontWeight: FontWeight.bold),
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
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  ImageConstant.likebutton,
                  width: 19,
                  height: 19,
                ),
                SvgPicture.asset(
                  ImageConstant.disLikeicon2,
                  width: 19,
                  height: 19,
                ),
                SvgPicture.asset(
                  ImageConstant.forwardIcon,
                  width: 19,
                  height: 19,
                ),
                InkWell(
                  onTap: () {
                    watchlistBottomSheet();
                  },
                  child: SvgPicture.asset(
                    ImageConstant.share,
                    width: 19,
                    height: 19,
                  ),
                ),
                InkWell(
                    onTap: () {
                      moreOptionBottomSheet();
                    },
                    child: Image.asset(
                      ImageConstant.moreIcon,
                      width: 19,
                      height: 19,
                    )),
              ],
            ),
            //
          ],
        ),
      ),
      VideoThumbnailWithInfo(),
      VideoThumbnailWithInfo(),
      VideoThumbnailWithInfo(),
      VideoThumbnailWithInfo(),
    ],
  ));
}
