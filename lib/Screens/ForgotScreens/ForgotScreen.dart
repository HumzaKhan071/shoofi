import 'package:shoofi/Routes/routes.dart';



class ForgotScreen extends StatelessWidget {
  ForgotController controller = ForgotController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 40,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: grey,
              )),
          centerTitle: true,
          title: Text(
            "Sign Up",
            style: TextStyle(
              color: black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                LinearProgressIndicator(
                  value: 0.1,
                  backgroundColor: grey,
                  valueColor: AlwaysStoppedAnimation<Color>(yellow),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40,
                  width: 213,
                  child: Center(
                    child: Text(
                      "How do you want to receive the  code to reset your password?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.3,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: SizedBox(
                    height: 106,
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Obx(() => Checkbox(
                              shape: CircleBorder(),
                              fillColor: MaterialStateProperty.all(yellow),
                              value: controller.valueBox.value,
                              onChanged: (valueBox) {
                                controller.valueBox1.value = false;
                                controller.valueBox.value = valueBox!;
                              })),
                          InkWell(
                            onTap: () {
                              controller.valueBox1.value = false;
                              controller.valueBox.value =
                                  !(controller.valueBox.value);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Send verification link via email",
                                  style: TextStyle(
                                    color: black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "username@yourmail.com",
                                  style: TextStyle(
                                    color: grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Obx(() => Checkbox(
                              shape: CircleBorder(),
                              fillColor: MaterialStateProperty.all(yellow),
                              value: controller.valueBox1.value,
                              onChanged: (valueBox1) {
                                controller.valueBox.value = false;
                                controller.valueBox1.value = valueBox1!;
                              })),
                          InkWell(
                            onTap: () {
                              controller.valueBox.value = false;
                              controller.valueBox1.value =
                                  !(controller.valueBox1.value);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Send confirmation code via phone",
                                  style: TextStyle(
                                    color: black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "+****-*****01",
                                  style: TextStyle(
                                    color: grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MyButtonContainer(
                  text: "Continue",
                  conColor: yellow,
                  press: () {
                    if (controller.valueBox.value) {
                      Get.to(() => VerifyScreen(
                            title: "Check your email",
                            subTitle:
                                "We have sent the code to the email on your device",
                          ));
                    } else if (controller.valueBox1.value) {
                      Get.to(() => VerifyScreen(
                          title: "Check your phone",
                          subTitle:
                              "We have sent the code to the registered phone"));
                    } else {
                      Get.snackbar("Error", "Please select one option");
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Not you?",
                      style: TextStyle(
                        color: blue,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                SizedBox(
                  height: Get.height * 0.1,
                ),
                Agreements()
              ],
            ),
          ),
        ));
  }
}
