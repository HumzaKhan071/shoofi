import '../../../Routes/routes.dart';

moreOptionBottomSheet() {
  return Get.bottomSheet(
    Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          )),
      height: 300,
      child: Column(
        children: [
          SizedBox(height: 10),
          Image.asset(ImageConstant.divider),
          SizedBox(height: 20),
          Text("More Options",
              style: TextStyle(
                  color: black, fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 15),
          Divider(
            thickness: 1,
            indent: 15,
            endIndent: 15,
          ),
          customListTileForMoreOptions(
            textWidget: Text("Video Quality", style: TextStyle(fontSize: 16)),
            imagePath: ImageConstant.clock,
            onTap: () {},
          ),
          customListTileForMoreOptions(
            textWidget: Text("Captions", style: TextStyle(fontSize: 16)),
            imagePath: ImageConstant.captions,
            onTap: () {},
          ),
          customListTileForMoreOptions(
            textWidget: Text("Share", style: TextStyle(fontSize: 16)),
            imagePath: ImageConstant.shareForwardIcon,
            onTap: () {},
          ),
          customListTileForMoreOptions(
            textWidget: Text("Not Interested", style: TextStyle(fontSize: 16)),
            imagePath: ImageConstant.notInterested,
            onTap: () {},
          ),
          customListTileForMoreOptions(
            textWidget: Text("Report", style: TextStyle(fontSize: 16)),
            imagePath: ImageConstant.report,
            onTap: () {
              reportBottomSheet();
            },
          ),
          customListTileForMoreOptions(
            textWidget: Text("Help Center", style: TextStyle(fontSize: 16)),
            imagePath: ImageConstant.helpCenter,
            onTap: () {},
          ),
        ],
      ),
    ),
    isScrollControlled: true,
  );
}
