import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/ForgotScreens/ForgotEmail.dart';
import 'package:shoofi/Screens/ForgotScreens/RetypePassword.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool valueBox = false;
  bool valueBox1 = false;
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
                            Checkbox(
                                shape: CircleBorder(),
                                fillColor: MaterialStateProperty.all(yellow),
                                value: valueBox,
                                onChanged: (valueBox) {
                                  setState(() {
                                    this.valueBox = valueBox!;
                                  });
                                }),
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
                            Checkbox(
                                shape: CircleBorder(),
                                fillColor: MaterialStateProperty.all(yellow),
                                value: valueBox1,
                                onChanged: (valueBox1) {
                                  setState(() {
                                    this.valueBox1 = valueBox1!;
                                  });
                                }),
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
                    if (valueBox == true) {
                      Get.to(() => ForgotEmail());
                    } else if (valueBox1 == true) {
                      Get.to(() => RetypePassword());
                    } else {
                      Get.snackbar("Error", "Please select one option");
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Not you?",
                    style: GoogleFonts.archivo(
                        color: blue,
                        fontSize: 12,
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: Get.height * 0.1,
                ),
                Text.rich(TextSpan(
                    text: "by continuing you agree to",
                    style: GoogleFonts.archivo(
                      fontSize: 12,
                      color: textColor,
                    ),
                    children: [
                      TextSpan(
                          text: " Terms of Service",
                          style: GoogleFonts.archivo(
                              fontSize: 12,
                              color: blue,
                              decoration: TextDecoration.underline,
                              decorationColor: grey)),
                    ])),
                const SizedBox(
                  height: 10,
                ),
                Text.rich(TextSpan(
                    text: "and",
                    style: GoogleFonts.archivo(
                      fontSize: 12,
                      color: textColor,
                    ),
                    children: [
                      TextSpan(
                          text: " Privacy Policies",
                          style: GoogleFonts.archivo(
                              fontSize: 12,
                              color: blue,
                              decoration: TextDecoration.underline,
                              decorationColor: grey)),
                    ])),
              ],
            ),
          ),
        ));
  }
}
