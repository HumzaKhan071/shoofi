import 'package:flutter/cupertino.dart';

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
        persistentFooterButtons: [
          Center(
            child: TextButton(
                onPressed: () {
                  signoutDialog(controller);
                },
                child: Text(
                  "Sign Out",
                  style: TextStyle(
                      color: red, fontSize: 16, fontWeight: FontWeight.w500),
                )),
          )
        ],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: SizedBox(
              height: Get.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProfileAvatar(
                            radius: 30,
                            backgroundImagePath: ImageConstant.a,
                            title: "Shoofista",
                            onTap: () {
                              pinDialog(
                                context,
                                onCompleted: (pin) {
                                  Get.offAll(() => HomeBottomNavigationBar());
                                },
                              );
                            }),
                        ProfileAvatar(
                            radius: 30,
                            backgroundImagePath: ImageConstant.a,
                            title: "Shoofista",
                            onTap: () {
                              pinDialog(
                                context,
                                onCompleted: (pin) {
                                  Get.offAll(() => HomeBottomNavigationBar());
                                },
                              );
                            }),
                        ProfileAvatar(
                            radius: 30,
                            iconSize: 30,
                            iconColor: black,
                            onTap: () {
                              Get.to(CreateProfile());
                            }),
                        ProfileAvatar(
                            radius: 30,
                            iconColor: black,
                            iconSize: 30,
                            onTap: () {
                              Get.to(CreateProfile());
                            }),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    minLeadingWidth: 0,
                    onTap: () {
                      Get.to(() => AccountUpdate2());
                    },
                    leading: Image.asset(ImageConstant.lock),
                    title: Text("Profile Lock",
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        )),
                    trailing: Image.asset(ImageConstant.arrowForward),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(() => NotificationScreen());
                    },
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
                          SizedBox(
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
                  MyNotificationsLisTile(),
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
                ],
              ),
            ),
          ),
        ));
  }
}
