import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/ForgotScreens/ForgotEmail.dart';
import 'package:shoofi/Screens/ForgotScreens/RetypePassword.dart';
import 'package:shoofi/controllers/ForgotControllers/forgot_controller.dart';

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
            style: GoogleFonts.archivo(
                color: black, fontSize: 14, fontWeight: FontWeight.w500),
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
                Center(
                  child: SizedBox(
                    height: 40,
                    width: 213,
                    child: Text(
                      "How do you want to receive the  code to reset your password?",
                      style: GoogleFonts.archivo(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.3,
                ),
                SizedBox(
                  height: 106,
                  width: 250,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Obx(() => Checkbox(
                                shape: CircleBorder(),
                                fillColor: MaterialStateProperty.all(yellow),
                                value: controller.valueBox.value,
                                onChanged: (valueBox) {
                                  controller.valueBox1.value = false;
                                  controller.valueBox.value = valueBox!;
                                })),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Send reset link via email",
                                  style: GoogleFonts.archivo(
                                      color: black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "username@yourmail.com",
                                  style: GoogleFonts.archivo(
                                    color: grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Send reset code via phone",
                                  style: GoogleFonts.archivo(
                                      color: black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "+****-*****01",
                                  style: GoogleFonts.archivo(
                                    color: grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                MyButtonContainer(
                  text: "Continue",
                  conColor: yellow,
                  press: () {
                    if (controller.valueBox.value) {
                      Get.to(() => ForgotEmail());
                    } else if (controller.valueBox1.value) {
                      Get.to(() => RetypePassword());
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
                      style: GoogleFonts.archivo(
                          color: blue,
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
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
