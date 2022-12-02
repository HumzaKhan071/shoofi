import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/LoginScreens/login_screen.dart';
import 'package:shoofi/Utils/image_constant.dart';

signoutDialog(controller) {
    Get.defaultDialog(
        barrierDismissible: false,
        title: "",
        content: Column(
          children: [
            CircleAvatar(
                radius: 50,
                backgroundColor: white,
                child: Image.asset(ImageConstant.logout)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      fillColor: MaterialStateProperty.all(black),
                      splashRadius: 0,
                      value: controller.valueBox.value,
                      onChanged: (valueBox) {
                        controller.valueBox.value = valueBox!;
                      }),
                ),
                Text(
                  "Exit on all screens",
                  style: TextStyle(
                      color: black, fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text("Are you sure wanna signout",
                style: TextStyle(
                    color: black, fontSize: 15, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 29,
                  width: 86,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: white,
                      )),
                  child: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 29,
                  width: 86,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: white,
                  ),
                  child: TextButton(
                      onPressed: () {
                        Get.offAll(() => LoginScreen());
                      },
                      child: Text(
                        "Yes",
                        style: TextStyle(
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )),
                )
              ],
            )
          ],
        ),
        backgroundColor: yellow,
        titleStyle: TextStyle(color: Colors.white),
        middleTextStyle: TextStyle(color: Colors.white),
        radius: 30);
  }