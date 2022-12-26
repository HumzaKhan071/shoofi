

import 'package:shoofi/routes/routes.dart';

removeWatchListBottomSheet() {
  Get.bottomSheet(Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        )),
    height: Get.height * 0.3,
    child: Column(
      children: [
        SizedBox(height: 10),
        Image.asset(ImageConstant.divider),
        SizedBox(height: 20),
        Text("Remove from List",
            style: TextStyle(
                color: black, fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 15),
        Divider(
          thickness: 1,
          indent: 15,
          endIndent: 15,
        ),
        MyButtonContainer(
            text: "Remove", textColor: white, conColor: deleteBtn),
        SizedBox(height: 10),
        MyButtonContainer(text: "Cancel", textColor: black, conColor: grey),
      ],
    ),
  ));
}
