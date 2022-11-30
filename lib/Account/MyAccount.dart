import 'package:flutter/cupertino.dart';
import 'package:shoofi/Screens/AccountUpdate/AccountUpdate1.dart';
import 'package:shoofi/Screens/HelpCenter/help_center.dart';
import 'package:shoofi/Screens/LoginScreens/login_screen.dart';
import 'package:shoofi/Screens/Widgets/pin_dialog.dart';
import 'package:shoofi/Utils/image_constant.dart';
import 'package:shoofi/controllers/Home/bottom_navigation_bar.dart';

import '../Routes/routes.dart';

class MyAccount extends StatelessWidget {
  MyAccount({super.key});

  HomeBottomNavigationBarController homeBottomNavigationBar =
      Get.find(tag: "bottomNavigation");
  HomeBottomNavigationBarController controller =
      HomeBottomNavigationBarController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileAvatar(
                      radius: 30,
                      backgroundImagePath: "assets/images/a.png",
                      onTap: () {
                        pinDialog(context);
                      }),
                  ProfileAvatar(
                      radius: 30,
                      backgroundImagePath: "assets/images/a.png",
                      onTap: () {
                        pinDialog(context);
                      }),
                  ProfileAvatar(
                      radius: 30,
                      iconSize: 30,
                      iconColor: black,
                      onTap: () {
                        print("object");
                      }),
                  ProfileAvatar(
                      radius: 30,
                      iconColor: black,
                      iconSize: 30,
                      onTap: () {
                        print("object");
                      }),
                ],
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              minLeadingWidth: 0,
              leading: Image.asset(ImageConstant.notificationImportant),
              title: Text("Notifications",
                  style: TextStyle(
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Wrap(
                  verticalDirection: VerticalDirection.up,
                  spacing: 10,
                  children: [
                    Container(
                        height: 20,
                        width: 33,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Obx(
                            () => CupertinoSwitch(
                                value: controller.isSwitched.value,
                                onChanged: (value) {
                                  controller.isSwitched.value = value;
                                }),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 3.0,
                      ),
                      child: Image.asset(ImageConstant.arrowForward),
                    )
                  ],
                ),
              ),
            ),
            Obx((() => controller.isSwitched.value
                ? MyNotificationsLisTile()
                : SizedBox())),
            ListTile(
              minLeadingWidth: 0,
              leading: Image.asset(ImageConstant.featurePlaylist),
              onTap: () {
                homeBottomNavigationBar.currentIndex.value = 3;
              },
              title: Text("My Watchist",
                  style: TextStyle(
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            ListTile(
              minLeadingWidth: 0,
              leading: Image.asset(ImageConstant.settings),
              onTap: () {
                Get.to(AppSetting());
              },
              title: Text("App Setting",
                  style: TextStyle(
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            ListTile(
              minLeadingWidth: 0,
              onTap: (() {
                Get.to(AccountUpdate1());
              }),
              leading: Image.asset(ImageConstant.accountCircle),
              title: Text("Account",
                  style: TextStyle(
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            ListTile(
              minLeadingWidth: 0,
              onTap: () {
                Get.to(HelpCenter());
              },
              leading: Image.asset(ImageConstant.helpOutline),
              title: Text("Help Center",
                  style: TextStyle(
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: grey,
              thickness: 2,
            ),
            Center(
              child: TextButton(
                  onPressed: () {
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
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      fillColor:
                                          MaterialStateProperty.all(black),
                                      splashRadius: 0,
                                      value: controller.valueBox.value,
                                      onChanged: (valueBox) {
                                        controller.valueBox.value = valueBox!;
                                      }),
                                ),
                                Text(
                                  "Exit on all screens",
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Text("Are you sure wanna signout",
                                style: TextStyle(
                                    color: black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
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
                  },
                  child: Text(
                    "Sign Out",
                    style: TextStyle(
                        color: red, fontSize: 16, fontWeight: FontWeight.w500),
                  )),
            )
          ],
        ),
      ),
    ));
  }
}

class MyNotificationsLisTile extends StatelessWidget {
  const MyNotificationsLisTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            leading: Image.asset("assets/images/img2.png"),
            title: Text("The Most Perfect Co...",
                style: TextStyle(
                  color: black,
                  fontSize: 16,
                )),
            subtitle: Text(
              "11/10/2022",
              style: TextStyle(color: grey),
            ),
            trailing: Image.asset(ImageConstant.removeCircle)),
        ListTile(
            minLeadingWidth: 0,
            leading: Image.asset("assets/images/img2.png"),
            title: Text("The Most Perfect Co...",
                style: TextStyle(
                  color: black,
                  fontSize: 16,
                )),
            subtitle: Text(
              "11/10/2022",
              style: TextStyle(color: grey),
            ),
            trailing: Image.asset(ImageConstant.removeCircle))
      ],
    );
  }
}
