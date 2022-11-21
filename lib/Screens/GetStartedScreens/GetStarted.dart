import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/controllers/get_started_controller.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    GetStartedController controller = GetStartedController();
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              Image.asset("assets/Images/logo3.png"),
              const SizedBox(
                height: 30,
              ),
              Image.asset("assets/Images/illustration1.png"),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyButtonContainer(
                        conColor: yellow,
                        text: "Register",
                        press: () {
                          Get.to(() => RegisterScreen());
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    MyButtonContainer(
                      conColor: grey,
                      text: "Sign In",
                      press: () {},
                    ),
                    const SizedBox(
                      height: 10,
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
                                  decorationColor: grey,
                                  decorationStyle: TextDecorationStyle.wavy)),
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
                                  decorationColor: grey,
                                  decorationStyle: TextDecorationStyle.wavy)),
                        ])),
                    SizedBox(
                      height: Get.height * 0.03,
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
