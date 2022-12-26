import 'package:flutter/cupertino.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/views/tv/account/update_billing_tv_view.dart';

class HomeAccountTvView extends StatelessWidget {
  HomeBottomNavigationBarController controller =
      HomeBottomNavigationBarController();

  HomeAccountTvView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(40),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              height: 138,
              width: 138,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(ImageConstant.qrcode))),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Scan QRcode to customize",
                  style: TextStyle(
                      color: black, fontSize: 28, fontWeight: FontWeight.w200),
                ),
                SizedBox(height: 10),
                Text(
                  "on your registered phone",
                  style: TextStyle(
                      color: black, fontSize: 28, fontWeight: FontWeight.w200),
                ),
              ],
            )
          ]),
          SizedBox(height: 30),
          Divider(
            color: grey,
            thickness: 1,
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Membership Plan",
                style: TextStyle(
                    color: black, fontSize: 19, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "Auto Reccuring",
                    style: TextStyle(
                        fontSize: 15,
                        color: black,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 10),
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
                ],
              )
            ],
          ),
          SizedBox(height: 5),
          Divider(
            color: grey,
            thickness: 1,
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Current Billing",
                    style: TextStyle(
                        color: black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text: "Subscription Plan :",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: " Monthly",
                              style: TextStyle(
                                color: black,
                                fontSize: 11,
                              )),
                        ]),
                      ),
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text: "Account Title :",
                              style: TextStyle(
                                color: black,
                                fontSize: 13,
                              )),
                          TextSpan(
                              text: " Shoofista",
                              style: TextStyle(
                                color: black,
                                fontSize: 11,
                              )),
                        ]),
                      ),
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text: "Card :",
                              style: TextStyle(
                                color: black,
                                fontSize: 12,
                              )),
                          TextSpan(
                              text: " **** **** **** ***45",
                              style: TextStyle(
                                color: black,
                                fontSize: 13,
                              )),
                        ]),
                      ),
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text: "Date :",
                              style: TextStyle(
                                color: black,
                                fontSize: 13,
                              )),
                          TextSpan(
                              text: " 10-18-2022",
                              style: TextStyle(
                                color: black,
                                fontSize: 11,
                              )),
                        ]),
                      ),
                    ],
                  ),
                ],
              ),
              MyButtonContainer(
                text: "Update Billing",
                conColor: yellow,
                width: 270,
                height: 38,
                press: () {
                  Get.to(() => UpdateBillingTvView());
                },
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 48,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: black,
                  width: 1,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    Get.to(() => UpdateBillingTvView());
                  },
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
